package ch.ivyteam.ivy.server.test;

import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

import org.openqa.selenium.By;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;

public class WfNavigator
{

  public static void openProcessLink(String processLink)
  {
    open(ServerControl.getProcessStartLink(processLink));
  }

  public static void home()
  {
    openProcessLink("BasicWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    basicWfUiShouldBeVisible();
  }

  public static void processList()
  {
    openProcessLink("BasicWorkflowUi/13EACA2A989BCC3D/DefaultProcessStartListPage.ivp");
    basicWfUiShouldBeVisible();
  }

  public static void taskList()
  {
    openProcessLink("BasicWorkflowUi/13EACA2A989BCC3D/DefaultTaskListPage.ivp");
    basicWfUiShouldBeVisible();
  }

  public static void caseList()
  {
    openProcessLink("BasicWorkflowUi/13F1D890C62823FF/CaseListUser.ivp");
    basicWfUiShouldBeVisible();
  }

  public static void taskHistory()
  {
    openProcessLink("BasicWorkflowUi/13F2E007FE178DD4/TaskHistory.ivp");
    basicWfUiShouldBeVisible();
  }

  public static void absence()
  {
    openProcessLink("BasicWorkflowUi/13F3C911395912D4/Absence.ivp");
    basicWfUiShouldBeVisible();
  }

  public static void substitution()
  {
    openProcessLink("BasicWorkflowUi/13F5720218D18BA2/Substitution.ivp");
    basicWfUiShouldBeVisible();
  }

  public static void mailNotificationSettings()
  {
    openProcessLink("BasicWorkflowUi/13F51835BF0FECEF/MailNotificationSettings.ivp");
    basicWfUiShouldBeVisible();
  }

  public static void caseAdmin()
  {
    openProcessLink("BasicWorkflowUi/1518C1BDAE6D978C/CaseListAdmin.ivp");
    basicWfUiShouldBeVisible();
  }

  public static void taskAdmin()
  {
    openProcessLink("BasicWorkflowUi/1518C6953618322C/TaskListAdmin.ivp");
    basicWfUiShouldBeVisible();
    PrimeUi.selectOne(By.id("taskListComponent:taskListForm:responsibleFilter"));
    PrimeUi.selectOne(By.id("taskListComponent:taskListForm:stateFilter"));
  }

  public static void logout()
  {
    openProcessLink("BasicWorkflowUi/13EACA2A989BCC3D/Logout.ivp");
    $(By.id("loginForm")).shouldBe(visible);
  }

  public static void loggedInUser()
  {
    openProcessLink("BasicWorkflowUi/1477BA1CD7421F55/LoggedInUser.ivp");
    basicWfUiShouldBeVisible();
  }

  public static void grantAdminRights()
  {
    openProcessLink("testWfUi/143F856F4E029A48/SetAdminUser.ivp");
  }
  
  private static void basicWfUiShouldBeVisible()
  {
    $(By.id("menuform")).shouldBe(visible);
  }
}