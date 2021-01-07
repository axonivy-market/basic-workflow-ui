package ch.ivyteam.ivy.project.jsf.wf.ui;

import static com.codeborne.selenide.Condition.exist;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.webtest.primeui.PrimeUi;
import com.axonivy.ivy.webtest.primeui.widget.Table;

import ch.ivyteam.ivy.server.test.WfNavigator;

class WebTestWorkflowIT extends BaseWorkflowUiTest
{
  private static final String TEST_USER_1 = "Test User 1 (user1)";
  private static final String TEST_USER_2 = "Test User 2 (user2)";

  @Test
  void home()
  {
    WfNavigator.home();
    $(By.id("mainArea")).shouldHave(text("Home"));
    
    awaitToBeClickable("ProcessListLink").click();
    $(By.id("mainArea")).shouldHave(text("Process List"));
    
    WfNavigator.home();
    awaitToBeClickable("TaskListLink").click();
    $(By.id("mainArea")).shouldHave(text("Task List"));
  }
  
  @Test
  void processlist()
  {
    WfNavigator.processList();
    //Start home process
    awaitToBeClickable(jsfLinkId()).click();
    switchToIFrame();
    awaitTextToBePresentIn(By.id("mainLayoutUnit"), "Request event");
    switchToDefaultContent();
    
    // Test processlist searchbar with process name
    WfNavigator.processList();
    
    Table dataTable = PrimeUi.table(By.id("processlistform:datatable"));
    dataTable.contains("TestCaseMap");
    
    searchDataTable("processlistform:SearchTxt", "test workflow js");
    dataTable = PrimeUi.table(By.id("processlistform:datatable"));
    dataTable.firstRowContains("Test Workflow Jsf");
    
    // Test processlist searchbar with process description
    WfNavigator.processList();
    searchDataTable("processlistform:SearchTxt", "Web pages");
    dataTable.firstRowContains("Test Workflow Html");
  }
  
  @Test
  void tasklist()
  {
    createTask("titel","beschreibung", 0);
    checkIsTaskCreated();
    closeTask();
    checkIsTaskClosed();
  }
  
  @Test
  void substituteTasksForUser()
  {
    createTask("taskForUser1","descriptionForUser1", 0);
    delegateTaskToUser("taskForUser1", TEST_USER_1);
    createTask("taskForUser2","descriptionForUser2", 0);
    delegateTaskToUser("taskForUser2", TEST_USER_2);
    
    addAbsenceForUser("30.04.2012", "09:10", "30.04.2031", "10:10", "Add absence for other test", TEST_USER_2);
    addSubstitutionForUserPersonalTasks(TEST_USER_2);
    
    login("user1", "user1");
    WfNavigator.taskList();
    $(By.id("taskListComponent:taskListForm:taskTable")).shouldHave(text("JSF taskForUser2"));
  }

  @Test
  void substituteTasksForRole()
  {
    createTask("taskForRole3","descriptionForRole3", 0);
    delegateTaskToRole("taskForRole3", "User Role 3 (role3)");
    
    addAbsenceForUser("30.04.2012", "09:10", "30.04.2031", "10:10", "Add absence for other test", TEST_USER_2);
    addSubstitutionForAllRolesOfUser(TEST_USER_2);
    
    login("user1", "user1");
    WfNavigator.taskList();
    $(By.id("taskListComponent:taskListForm:taskTable")).shouldHave(text("JSF taskForRole3"));
  }

  private void checkIsTaskCreated()
  {
    WfNavigator.taskList();
    $(By.id("taskListComponent:taskListForm:taskTable")).shouldHave(text("JSF titel"))
            .find("span.priority-exception").should(exist);
  }

  private void checkIsTaskClosed()
  {
    WfNavigator.taskList();
    $(By.id("taskListComponent:taskListForm:taskTable")).shouldNotHave(text("JSF titel"));
  }

  private void delegateTaskToUser(String taskName, String user)
  {
    WfNavigator.taskList();
    $(By.id("taskListComponent:taskListForm:taskTable")).shouldHave(text(taskName));
    awaitToBeClickable("buttonTaskDetail").click();
    awaitToBeClickable("formTaskDetails:openDelegateTask").click();
    PrimeUi.dialog(By.id("modalDialogDelegateTask")).waitForVisibility(true);
    PrimeUi.selectOne(By.id("formDelegateTask:selectionOfUser")).selectItemByLabel(user);
    awaitToBeClickable("formDelegateTask:saveDelegateTask").click();
    PrimeUi.dialog(By.id("modalDialogDelegateTask")).waitHidden();
  }
  
  private void delegateTaskToRole(String taskName, String role)
  {
    WfNavigator.taskList();
    $(By.id("taskListComponent:taskListForm:taskTable")).shouldHave(text(taskName));
    awaitToBeClickable("buttonTaskDetail").click();
    awaitToBeClickable("formTaskDetails:openDelegateTask").click();
    PrimeUi.dialog(By.id("modalDialogDelegateTask")).waitForVisibility(true);
    PrimeUi.selectOneRadio(By.id("formDelegateTask")).selectItemById("formDelegateTask:delegateOptions:1_clone");
    PrimeUi.selectOne(By.id("formDelegateTask:selectionOfRole")).selectItemByLabel(role);
    awaitToBeClickable("formDelegateTask:saveDelegateTask").click();
    PrimeUi.dialog(By.id("modalDialogDelegateTask")).waitHidden();
  }

  private void addSubstitutionForUserPersonalTasks(String user)
  {
    WfNavigator.substitution();
    PrimeUi.selectOne(By.id("formSubstitute:userSelection")).selectItemByLabel(user);
    awaitToBeClickable("formSubstitute:addSubstitute").click();
    PrimeUi.dialog(By.id("dialogAddSubstitute")).waitForVisibility(true);
    PrimeUi.selectOne(By.id("formAddSubstitute:substituteUser")).selectItemByLabel(TEST_USER_1);
    awaitToBeClickable("formAddSubstitute:substituteDescription").click();
    awaitToBeClickable("formAddSubstitute:substituteDescription").clear();
    awaitToBeClickable("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    awaitToBeClickable("formAddSubstitute:saveSubstitution").click();
    PrimeUi.dialog(By.id("dialogAddSubstitute")).waitHidden();
  }

  private void addSubstitutionForAllRolesOfUser(String user)
  {
    WfNavigator.substitution();
    PrimeUi.selectOne(By.id("formSubstitute:userSelection")).selectItemByLabel(user);
    awaitToBePresent("formSubstitute:addSubstitute");
    awaitToBeClickable("formSubstitute:addSubstitute").click();
    PrimeUi.dialog(By.id("dialogAddSubstitute")).waitForVisibility(true);
    PrimeUi.selectOne(By.id("formAddSubstitute:substituteUser")).selectItemByLabel(TEST_USER_1);
    PrimeUi.selectOneRadio(By.id("formAddSubstitute")).selectItemById("formAddSubstitute:options:1_clone");
    
    PrimeUi.selectCheckboxMenu(By.id("formAddSubstitute:roleSelection")).selectAllItems();
    awaitToBeClickable("formAddSubstitute:substituteDescription").click();
    awaitToBeClickable("formAddSubstitute:substituteDescription").clear();
    awaitToBeClickable("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    awaitToBeClickable("formAddSubstitute:saveSubstitution").click();
    PrimeUi.dialog(By.id("dialogAddSubstitute")).waitHidden();
  }
}
