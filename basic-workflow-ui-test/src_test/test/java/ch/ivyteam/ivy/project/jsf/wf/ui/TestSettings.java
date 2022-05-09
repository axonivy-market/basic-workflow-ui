package ch.ivyteam.ivy.project.jsf.wf.ui;

import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Condition.selected;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.webtest.primeui.PrimeUi;
import com.axonivy.ivy.webtest.primeui.widget.Dialog;
import com.axonivy.ivy.webtest.primeui.widget.SelectOneMenu;

import ch.ivyteam.ivy.server.test.WfNavigator;

public class TestSettings extends BaseWorkflowUiTest
{
  @Test
  public void testAddAbsence() throws Exception
  {
    addAbsenceForMe("31.31.2030", "32:32", "31.31.2031", "40:40", "Add absence test");
    $(By.id("formAddAbsence:saveNewAbsence")).shouldBe(visible, enabled);
    $(By.id("formAddAbsence:absenceMessage")).shouldHave(text("could not be understood as a date"));
    checkIfAbsenceContains("No absences");
    addAbsenceForMe("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence test");
    checkIfAbsenceContains("Add absence test");
    deleteAbsence();
    checkIfAbsenceContains("No absences");
  }

  @Test
  public void testAddAbsenceForOther() throws Exception
  {
    addAbsenceForUser("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence for other test",
            "Test User 2 (user2)");
    login("user2", "user2");
    checkIfAbsenceContains("Add absence for other test");
    deleteAbsence();
  }

  @Test
  public void testEditAbsence() throws Exception
  {
    addAbsenceForMe("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence test");
    checkIfAbsenceContains("Add absence test");
    editAbsence("31.31.2030", "32:32", "31.31.2031", "40:40", "Edit absence test", "me");
    $(By.id("formEditAbsence:saveEditAbsence")).shouldBe(visible, enabled);
    $(By.id("formEditAbsence:absenceMessage")).shouldHave(text("could not be understood as a date"));
    checkIfAbsenceContains("Add absence test");
    editAbsence("15.04.2030", "11:11", "16.04.2031", "09:09", "Edit absence test", "me");
    checkIfAbsenceContains("Edit absence test");
    deleteAbsence();
    checkIfAbsenceContains("No absences");
  }

  @Test
  public void testEditAbsenceForOther() throws Exception
  {
    addAbsenceForUser("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence for other test",
            "Test User 2 (user2)");
    editAbsence("15.04.2030", "11:11", "16.04.2031", "09:09", "Edit absence for other test", "other");
    login("user2", "user2");
    checkIfAbsenceContains("Edit absence for other test");
    deleteAbsence();
  }

  @Test
  public void testShowAbsentUsers() throws Exception
  {
    addAbsenceForUser("30.07.2012", "09:10", "30.08.2031", "10:10", "Add absence for other test",
            "Test User 2 (user2)");
    awaitToBeClickable("showAbsentUsers").click();
    $(By.id("formAbsentUsers")).shouldHave(text("Test User 2 (user2)"));

    // Trick to close the popup window with the absent users table.
    $("#dialogAbsentUsers .ui-dialog-titlebar-close").shouldBe(visible).click();
    $("#dialogAbsentUsers").shouldNotBe(visible);

    deleteAbsence();
    checkIfAbsenceContains("No absences");
  }

  private void editAbsence(String startDate, String startTime, String endDate, String endTime,
          String description, String absenceFor)
  {
    WfNavigator.absence();
    if (absenceFor == "other")
    {
      PrimeUi.selectOne(By.id("formAbsence:userSelection")).selectItemByLabel("Test User 2 (user2)");
    }    
    awaitToBeClickable("formAbsence:tableAbsence:0:editButton").click();

    awaitToBeClickable("formEditAbsence:absenceStartDate_input").click();
    awaitToBeClickable("formEditAbsence:absenceStartDate_input").clear();
    awaitToBeClickable("formEditAbsence:absenceStartDate_input").sendKeys(startDate);
    
    awaitToBeClickable("formEditAbsence:absenceStartTime_input").click();
    awaitToBeClickable("formEditAbsence:absenceStartTime_input").clear();
    awaitToBeClickable("formEditAbsence:absenceStartTime_input").sendKeys(startTime);
    
    awaitToBeClickable("formEditAbsence:absenceEndDate_input").click();
    awaitToBeClickable("formEditAbsence:absenceEndDate_input").clear();
    awaitToBeClickable("formEditAbsence:absenceEndDate_input").sendKeys(endDate);
    
    awaitToBeClickable("formEditAbsence:absenceDescription").click();
    awaitToBeClickable("formEditAbsence:absenceEndTime_input").click();
    awaitToBeClickable("formEditAbsence:absenceEndTime_input").clear();
    awaitToBeClickable("formEditAbsence:absenceEndTime_input").sendKeys(endTime);
    
    awaitToBeClickable("formEditAbsence:absenceDescription").click();
    awaitToBeClickable("formEditAbsence:absenceDescription").clear();
    awaitToBeClickable("formEditAbsence:absenceDescription").sendKeys(description);
    awaitToBeClickable("formEditAbsence:saveEditAbsence").click();
  }

  private void checkIfAbsenceContains(String description)
  {
    WfNavigator.absence();
    PrimeUi.table(By.id("formAbsence:tableAbsence")).contains(description);
  }

  private void deleteAbsence()
  {
    awaitToBeClickable("formAbsence:tableAbsence:0:removeButton").click();
  }

  @Test
  public void testSubstitution() throws Exception
  {
    addSubstituteForTasks("me");
    PrimeUi.table(By.id("formSubstitute:tableSubstitute")).contains("user2");
    login("user2", "user2");
    checkIsMySubstitutionAdded();
    addSubstitutesForRoles("me");
    checkIsSubstituteForRolesAdded();
    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
    deleteSubstitute();
  }

  @Test
  public void testSubstitutionOther() throws Exception
  {
    addSubstituteForTasks("other");
    SelectOneMenu selectOneMenu = PrimeUi.selectOne(By.id("formSubstitute:userSelection"));
    selectOneMenu.selectItemByLabel("Test User 2 (user2)");
    PrimeUi.table(By.id("formMySubstitutions:tableMySubstitutions")).contains("user1");
    addSubstitutesForRoles("other");
    checkIsSubstituteForRolesAdded();
    WfNavigator.substitution();
    selectOneMenu.selectItemByLabel("Test User 1 (user1)");
    awaitToBeClickable("formSubstitute:tableSubstitute:0:removeButton").click();
  }

  private void addSubstituteForTasks(String substituteFor)
  {
    WfNavigator.substitution();
    if (substituteFor == "other")
    {
      PrimeUi.selectOne(By.id("formSubstitute:userSelection")).selectItemByLabel("Test User 1 (user1)");
    }
    Dialog dialogSubstitute = PrimeUi.dialog(By.id("dialogAddSubstitute"));
    dialogSubstitute.waitForVisibility(false);
    awaitToBePresent("formSubstitute:addSubstitute").click();
    dialogSubstitute.waitForVisibility(true);
    SelectOneMenu selectOneMenu = PrimeUi.selectOne(By.id("formAddSubstitute:substituteUser"));
    selectOneMenu.selectItemByLabel("Test User 2 (user2)");
    awaitToBeClickable("formAddSubstitute:substituteDescription").click();
    awaitToBeClickable("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    awaitToBeClickable("formAddSubstitute:saveSubstitution").click();
    dialogSubstitute.waitHidden();
  }

  private void checkIsMySubstitutionAdded()
  {
    WfNavigator.substitution();
    PrimeUi.table(By.id("formMySubstitutions:tableMySubstitutions"))
            .contains(WEB_TEST_SERVER_ADMIN_USER);
  }

  private void addSubstitutesForRoles(String substituteFor)
  {
    if (substituteFor.equals("other"))
    {
      PrimeUi.selectOne(By.id("formSubstitute:userSelection")).selectItemByLabel("Test User 2 (user2)");
    }
    awaitToBeClickable("formSubstitute:addSubstitute").click();
    PrimeUi.selectOneRadio(By.id("formAddSubstitute")).selectItemById("formAddSubstitute:options:1_clone");

    PrimeUi.selectCheckboxMenu(By.id("formAddSubstitute:roleSelection")).selectAllItems();
    awaitToBeClickable("formAddSubstitute:substituteDescription").click();
    awaitToBeClickable("formAddSubstitute:substituteDescription").clear();
    awaitToBeClickable("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    awaitToBeClickable("formAddSubstitute:saveSubstitution").click();
  }

  private void checkIsSubstituteForRolesAdded()
  {
    PrimeUi.table(By.id("formSubstitute:tableSubstitute")).contains("Role 1");
    PrimeUi.table(By.id("formSubstitute:tableSubstitute")).contains("Role 2");
    awaitToBeClickable("formSubstitute:tableSubstitute:0:removeButton").click();
    awaitToBeClickable("formSubstitute:tableSubstitute:0:removeButton").click();
  }

  private void deleteSubstitute()
  {
    WfNavigator.substitution();
    awaitToBeClickable("formSubstitute:tableSubstitute:0:removeButton").click();
  }

  @Test
  public void testMailNotification() throws Exception
  {
    WfNavigator.mailNotificationSettings();
    // set User specific
    PrimeUi.selectOneRadio(By.id("formMailNotification:appDefault"))
            .selectItemById("formMailNotification:appDefault:1");
    setMailNotification();
    WfNavigator.mailNotificationSettings();
    checkSetMailNotification();
    // set default
    awaitToBeClickable(By.cssSelector("span.ui-button-text.ui-c")).click();
    awaitToBeClickable("formMailNotification:saveMailNotification").click();
  }

  private void setMailNotification()
  {
    checkBooleanBox("formMailNotification:onTask");
    checkBooleanBox("formMailNotification:checkMonday");
    checkBooleanBox("formMailNotification:checkTuesday");
    checkBooleanBox("formMailNotification:checkWednesday");
    checkBooleanBox("formMailNotification:checkThursday");
    checkBooleanBox("formMailNotification:checkFriday");
    checkBooleanBox("formMailNotification:checkSaturday");
    checkBooleanBox("formMailNotification:checkSunday");
    awaitToBeClickable("formMailNotification:saveMailNotification").click();
  }

  private void checkBooleanBox(String id)
  {
    PrimeUi.selectBooleanCheckbox(By.id(id)).setChecked();
  }

  private void checkSetMailNotification()
  {
    $(By.id("formMailNotification:onTask_input")).shouldBe(selected);
    $(By.id("formMailNotification:checkMonday_input")).shouldBe(selected);
    $(By.id("formMailNotification:checkTuesday_input")).shouldBe(selected);
    $(By.id("formMailNotification:checkWednesday_input")).shouldBe(selected);
    $(By.id("formMailNotification:checkThursday_input")).shouldBe(selected);
    $(By.id("formMailNotification:checkFriday_input")).shouldBe(selected);
    $(By.id("formMailNotification:checkSaturday_input")).shouldBe(selected);
    $(By.id("formMailNotification:checkSunday_input")).shouldBe(selected);
  }

  @Test
  public void testDefaultHome() throws Exception
  {
    setDefaultPageProcess();
    WfNavigator.openProcessLink("basic-workflow-ui-test/13FCD703133237C4/testDefaultHome.ivp");
    awaitTextToBePresentIn(By.id("mainArea"), "Home");
  }

  @Test
  public void testDefaultProcessList() throws Exception
  {
    setDefaultPageProcess();
    WfNavigator.openProcessLink("basic-workflow-ui-test/13FCD703133237C4/testDefaultProcesslist.ivp");
    awaitTextToBePresentIn(By.id("mainArea"), "Process List");
  }

  @Test
  public void testDefaultTaskList() throws Exception
  {
    setDefaultPageProcess();
    WfNavigator.openProcessLink("basic-workflow-ui-test/13FCD703133237C4/testDefaultTaskList.ivp");
    awaitTextToBePresentIn(By.id("mainArea"), "Task List");
  }

  @Test
  public void testDefaultLogin() throws Exception
  {
    setDefaultPageProcess();
    createTask("titel", "beschreibung", 0);
    WfNavigator.processList();
    awaitTextToBePresentIn(By.id("mainArea"), "Process List");
    callDefaultLogin();
  }

  private void setDefaultPageProcess()
  {
    WfNavigator.openProcessLink("basic-workflow-ui-test/13FCD703133237C4/SetDefaultProcess.ivp?processName=com.axonivy.utils.wf:basic-workflow-ui");
    awaitTextToBePresentIn(By.id("mainArea"), "Home");
  }

  private void callDefaultLogin()
  {
    WfNavigator.taskList();
    // get task id
    String taskIdPart = "detailTaskId=";
    String href = awaitToBeClickable("taskLinkRow_0").getAttribute("href");
    String taskId = href.substring(href.indexOf(taskIdPart) + taskIdPart.length());
    WfNavigator.logout();
    WfNavigator.openProcessLink("basic-workflow-ui-test/13F3D94E5C99F06F/13F3D94E5C99F06F-f1/TaskA.ivp?taskId=" + taskId);
    awaitTextToBePresentIn(By.id("loginForm"), "Sign-in to BasicWorkflowUI");
    // Login
    By usernameLocator = By.id("loginForm:userName");
    $(usernameLocator).clear();
    $(usernameLocator).sendKeys(WEB_TEST_SERVER_ADMIN_USER);
    By passwordLocator = By.id("loginForm:password");
    $(passwordLocator).clear();
    $(passwordLocator).sendKeys(WEB_TEST_SERVER_ADMIN_PASSWORD);
    awaitToBeClickable("loginForm:login").click();
    awaitTextToBePresentIn(By.id("mainArea"), "Logged in");
    closeTask();
    WfNavigator.taskList();
    awaitTextToBePresentIn(By.id("mainArea"), "Task List");
  }
}
