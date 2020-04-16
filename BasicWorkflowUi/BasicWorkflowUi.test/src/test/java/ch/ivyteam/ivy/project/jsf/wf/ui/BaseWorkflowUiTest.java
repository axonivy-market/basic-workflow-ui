package ch.ivyteam.ivy.project.jsf.wf.ui;

import static com.axonivy.ivy.webtest.engine.EngineUrl.DESIGNER;
import static com.axonivy.ivy.webtest.engine.EngineUrl.isDesigner;
import static com.codeborne.selenide.Condition.empty;
import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Condition.exist;
import static com.codeborne.selenide.Condition.not;
import static com.codeborne.selenide.Condition.or;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.BeforeEach;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import com.axonivy.ivy.webtest.IvyWebTest;
import com.axonivy.ivy.webtest.primeui.PrimeUi;
import com.axonivy.ivy.webtest.primeui.widget.Dialog;
import com.codeborne.selenide.Selenide;
import com.codeborne.selenide.SelenideElement;

import ch.ivyteam.ivy.server.test.ApplicationLogin;
import ch.ivyteam.ivy.server.test.WfNavigator;

@IvyWebTest
public class BaseWorkflowUiTest
{
  
  public static final String APP = isDesigner() ? DESIGNER : "Portal";
  public static final String WEB_TEST_SERVER_ADMIN_USER;
  public static final String WEB_TEST_SERVER_ADMIN_PASSWORD;
  public static final String WF_JSF_LINK_ID = "/ivy/pro/" + APP + "/testWfUi/13F3D94E5C99F06F/WfJsf.ivp";
  public static final String WF_HTML_LINK_ID = "/ivy/pro/" + APP + "/testWfUi/13F3D94AF2F236BF/WfHtml.ivp";
  private static final String[] PRIORITIES = {"EXCEPTION", "HIGH", "NORMAL", "LOW"};

  static
  {
    WEB_TEST_SERVER_ADMIN_USER = "Administrator";
    WEB_TEST_SERVER_ADMIN_PASSWORD = "administrator";
  }

  @BeforeEach
  public void setUp() throws Exception
  {
    WfNavigator.grantAdminRights();
    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
  }

  protected void login(String username, String password)
  {
    ApplicationLogin.login(username, password);
  }

  protected void createTask(String title, String description, int priority)
  {
    createTask(title, description, priority, null);
  }

  protected void createTask(String title, String description, int priority, String expiryDate)
  {
    WfNavigator.processList();
    awaitToBeClickable(WF_JSF_LINK_ID).click();
    switchToIFrame();
    $(By.id("formRequest:caption")).shouldBe(visible);
    awaitToBeClickable("formRequest:caption").sendKeys(title);
    PrimeUi.selectOne(By.id("formRequest:taskPriority"))
            .selectItemByLabel(PRIORITIES[priority]);
    awaitToBeClickable("formRequest:description").sendKeys(description);
    if (expiryDate != null)
    {
      awaitToBeClickable("formRequest:expiryDate_input").click();
      awaitToBeClickable("formRequest:expiryDate_input").sendKeys(expiryDate);
    }
    awaitToBeClickable("formRequest:submitJsf").click();
    switchToDefaultContent();
  }

  protected void createHtmlTask(String title, String description)
  {
    WfNavigator.processList();
    awaitToBeClickable(WF_HTML_LINK_ID).click();
    switchToIFrame();
    awaitToBeClickable("caption").sendKeys(title);
    awaitToBeClickable("description").sendKeys(description);
    awaitToBeClickable("submit").click();
    switchToDefaultContent();
  }

  protected void createTaskWithCategory(String title, String description, int priority, String category)
  {
    WfNavigator.processList();
    awaitToBeClickable(WF_JSF_LINK_ID).click();
    switchToIFrame();
    awaitToBePresent("formRequest:caption");
    awaitToBeClickable("formRequest:caption").sendKeys(title);
    PrimeUi.selectOne(By.id("formRequest:taskPriority")).selectItemByLabel(PRIORITIES[priority]);
    awaitToBeClickable("formRequest:description").sendKeys(description);
    awaitToBeClickable("formRequest:category").sendKeys(category);
    awaitToBeClickable("formRequest:submitJsf").click();
    switchToDefaultContent();
  }
  
  protected void closeTask()
  {
    WfNavigator.taskList();
    awaitToBeClickable("taskLinkRow_0").click();
    switchToIFrame();
    awaitToBeClickable("formConfirmation:save").click();
    switchToDefaultContent();
  }

  protected void closeHtmlTask()
  {
    WfNavigator.taskList();
    awaitToBeClickable("taskLinkRow_0").click();
    switchToIFrame();
    awaitToBeClickable(By.name("ok")).click();
    awaitToBeClickable("submit").click();
    switchToDefaultContent();
  }

  protected final void clickAdminElement(WebElement button, String failMessage)
  {
    assertThat(button.isEnabled())
            .as("Missing administration rights! " + failMessage)
            .isTrue();
    button.click();
  }

  public void switchToDefaultContent()
  {
    Selenide.switchTo().defaultContent();
  }

  public void switchToIFrame()
  {
    Selenide.switchTo().frame($(By.id("iFrame")));
  }

  public void addAbsenceForMe(String startDate, String startTime, String endDate, String endTime,
          String description)
  {
    WfNavigator.absence();
    addAbsence(startDate, startTime, endDate, endTime, description);
  }

  public void addAbsenceForUser(String startDate, String startTime, String endDate, String endTime,
          String description, String absenceForUser)
  {
    WfNavigator.absence();
    PrimeUi.selectOne(By.id("formAbsence:userSelection")).selectItemByLabel(absenceForUser);
    addAbsence(startDate, startTime, endDate, endTime, description);
  }

  public void addAbsence(String startDate, String startTime, String endDate, String endTime,
          String description)
  {
    awaitToBeClickable("formAbsence:addAbsence").click();
    Dialog absenceDialog = PrimeUi.dialog(By.id("dialogAddAbsence"));
    absenceDialog.waitForVisibility(true);
    clickAndSendKeys("absenceStartTime_input", startTime);
    clickAndSendKeys("absenceStartDate_input", startDate);
    clickAndSendKeys("absenceEndTime_input", endTime);
    clickAndSendKeys("absenceEndDate_input", endDate);
    clickAndSendKeys("absenceDescription", description);
    awaitToBeClickable("formAddAbsence:saveNewAbsence").click();
    $(".ui-messages").shouldBe(or("hidden or error", not(visible), not(empty)));
  }

  private void clickAndSendKeys(String inputId, String inputValue)
  {
    awaitToBeClickable("formAddAbsence:absenceDescription").click();
    awaitToBeClickable("formAddAbsence:" + inputId).click();
    awaitToBeClickable("formAddAbsence:" + inputId).sendKeys(inputValue);
  }

  protected void awaitTextToBePresentIn(By locator, String text)
  {
    $(locator).shouldHave(text(text));
  }

  protected SelenideElement awaitToBePresent(String id)
  {
    return awaitToBePresent(By.id(id));
  }

  protected SelenideElement awaitToBePresent(By locator)
  {
    return $(locator).shouldBe(exist, visible);
  }

  protected SelenideElement awaitToBeClickable(String id)
  {
    return awaitToBeClickable(By.id(id));
  }

  protected SelenideElement awaitToBeClickable(By locator)
  {
    return $(locator).shouldBe(visible, enabled);
  }

  protected void searchDataTable(String searchId, String filterText)
  {
    $(By.id(searchId)).shouldBe(visible).sendKeys(filterText);
  }
}