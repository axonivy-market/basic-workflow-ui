package ch.ivyteam.ivy.project.jsf.wf.ui;

import static com.codeborne.selenide.Condition.exist;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.webtest.primeui.PrimeUi;
import com.axonivy.ivy.webtest.primeui.widget.SelectOneMenu;

import ch.ivyteam.ivy.server.test.WfNavigator;

class WebTestDetailsIT extends BaseWorkflowUiTest
{
  @Test
  void taskDetails()
  {
    createTask("task", "Test if shows details", 2);
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("task"),
            text("Test if shows details"),
            text("NORMAL"),
            text("SUSPENDED"));
    closeTask();
  }

  @Test
  void caseDetails()
  {
    createTask("case", "Test if shows details", 2);
    WfNavigator.caseList();
    awaitToBeClickable("buttonCaseDetail").click();
    $(By.id("caseDetailsList")).shouldHave(text("Test Workflow Jsf"),
            text("Sample WF using Html Dialogs"));
    $(By.id("formTaskList:taskTable")).shouldHave(text("JSF case"));
    closeTask();
  }

  @Test
  void addNoteToTask()
  {
    createTask("taskForAddNote", "Test add note", 2);
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("taskForAddNote"));
    awaitToBeClickable("formTaskDetails:openAddNote").click();
    addNote();

    login("user1", "user1");
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    awaitTextToBePresentIn(By.className("messageNotes"), "This is the description of the new note");
    $(By.xpath("//*[@id='formTaskDetails:j_id_q_2_3_2a:0:openDeleteCaseNote']")).shouldNot(exist);
    closeTask();
  }

  @Test
  void addNoteToCase()
  {
    createTask("taskForAddNoteToCase", "Test add note", 2);
    WfNavigator.caseList();
    awaitToBeClickable("buttonCaseDetail").click();
    $(By.id("formTaskList:taskTable")).shouldHave(text("taskForAddNoteToCase"));
    awaitToBeClickable("formCaseDetails:openAddNoteCase").click();
    addNote();

    login("user1", "user1");
    WfNavigator.caseList();
    PrimeUi.selectOneRadio(By.id("caseListComponent:caseListForm:caseOption")).selectItemByValue("Involved");
    awaitToBeClickable("buttonCaseDetail").click();
    awaitTextToBePresentIn(By.className("messageNotes"), "This is the description of the new note");
    $(By.xpath("//*[@id='formTaskDetails:j_id_q_2_3_2a:0:openDeleteCaseNote']")).shouldNot(exist);
    closeTask();
  }

  private void addNote()
  {
    awaitToBeClickable("formAddNote:note").sendKeys("This is the description of the new note");
    awaitToBeClickable("formAddNote:saveNote").click();
    awaitTextToBePresentIn(By.className("messageNotes"), "This is the description of the new note");
  }

  @Test
  void changeExpiryToFuture()
  {
    createTask("taskForChangeExpiry", "Test change expiry", 2, "30.4.2030");
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("taskForChangeExpiry"));
    awaitToBeClickable("formTaskDetails:openChangeExpiry").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").clear();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").sendKeys("30.04.2030");
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").clear();
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").sendKeys("10:10");
    awaitToBeClickable("formDetailsChangeExpiry:saveChangeExpiry").click();
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("4/30/30, 10:10 AM"));
    closeTask();
  }

  @Test
  void changeExpiryToPast()
  {
    createTask("taskForChangeExpiryOlderDate", "Test change expiry", 2, "30.4.2030");
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("taskForChangeExpiry"));
    awaitToBeClickable("formTaskDetails:openChangeExpiry").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").clear();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").sendKeys("15.07.2013");
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").clear();
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").sendKeys("11:11");
    awaitToBeClickable("formDetailsChangeExpiry:saveChangeExpiry").click();
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("7/15/13, 11:11 AM"),
            text("Responsible after expiry"));
  }

  @Test
  void delegateTask()
  {
    createTask("taskDelegateTask", "Test change expiry", 2);

    WfNavigator.taskList();
    $(By.id("taskListComponent:taskListForm:taskTable")).shouldHave(text("taskDelegateTask"));
    awaitToBeClickable("buttonTaskDetail").click();
    
    $(By.id("taskDetailsList")).shouldHave(text("taskDelegateTask"));
    awaitToBeClickable("formTaskDetails:openDelegateTask").click();
    SelectOneMenu menu = PrimeUi.selectOne(By.id("formDelegateTask:selectionOfUser"));
    menu.selectItemByLabel("Test User 1 (user1)");
    awaitToBeClickable("formDelegateTask:saveDelegateTask").click();

    WfNavigator.taskList();
    $(By.id("taskListComponent:taskListForm:taskTable")).shouldNotHave(text("taskDelegateTask"));
    createTask("taskDelegateTaskToRole", "Test delegate to role", 2);

    WfNavigator.taskList();
    $(By.id("taskListComponent:taskListForm:taskTable")).shouldHave(text("taskDelegateTaskToRole"));
    awaitToBeClickable("buttonTaskDetail").click();
    awaitToBeClickable("formTaskDetails:openDelegateTask").click();
    PrimeUi.selectOneRadio(By.id("formDelegateTask"))
            .selectItemById("formDelegateTask:delegateOptions:1_clone");
    awaitToBeClickable("formDelegateTask:saveDelegateTask").click();

    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("Everybody"));
    closeTask();
  }

  @Test
  void destroyWorkflow()
  {
    createTask("caseDestroyWorkflow", "Test destroy workflow", 2);
    WfNavigator.caseList();
    awaitToBeClickable("buttonCaseDetail").click();
    $(By.id("formTaskList:taskTable")).shouldHave(text("caseDestroyWorkflow"));
    awaitToBeClickable("formCaseDetails:openDeleteCase").click();
    awaitToBeClickable("formConfirmDeleteReset:confirmAction").click();
    WfNavigator.taskList();
    $(".ui-datatable").shouldNotHave(text("JSF caseDestroyWorkflow"));
  }

  @Test
  void cancelDestroyWorkflow()
  {
    createTask("caseCancelDestroyWorkflow", "Test destroy workflow", 2);
    WfNavigator.caseList();
    awaitToBeClickable("buttonCaseDetail").click();
    $(By.id("formTaskList:taskTable")).shouldHave(text("caseCancelDestroyWorkflow"));
    awaitToBeClickable("formCaseDetails:openDeleteCase").click();
    awaitToBeClickable("formConfirmDeleteReset:notConfirmAction").click();
    $(By.id("formTaskList:taskTable")).find(".task-state-suspended").should(exist);
    WfNavigator.taskList();
    $(By.id("taskListComponent:taskListForm:taskTable")).shouldHave(text("JSF caseCancelDestroyWorkflow"));
    closeTask();
  }

  @Test
  void resetTask()
  {
    createTask("resetTask", "Test reset task", 2);
    WfNavigator.taskList();
    awaitToBeClickable("taskLinkRow_0").click();
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("resetTask"), text("RESUMED"));
    awaitToBeClickable("formTaskDetails:openResetTask").click();
    awaitToBeClickable("formConfirmDeleteReset:confirmAction").click();
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("SUSPENDED"));
    closeTask();
  }

  @Test
  void parkTask()
  {
    createTask("parkTask", "Test park task", 2);
    WfNavigator.taskList();
    awaitToBeClickable("taskLinkRow_0").click();
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("parkTask"), text("RESUMED"));
    awaitToBeClickable("formTaskDetails:openParkTask").click();
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("PARKED"));
    closeTask();
  }

  @Test
  void pageArchive()
  {
    createHtmlTask("pageArchive", "Test page archive");
    WfNavigator.caseList();
    awaitToBeClickable("buttonCaseDetail").click();
    $(By.id("caseDetailsList")).shouldHave(text("A Html Case"));
    awaitToBeClickable("formCaseDetails:openPageArchive").click();
    WfNavigator.taskList();
    awaitToBeClickable("taskLinkRow_0").click();
    switchToIFrame();
    awaitToBeClickable("submit").click();
    switchToDefaultContent();
    WfNavigator.taskHistory();
    awaitToBeClickable("buttonTaskHistoryDetail_0").click();
    awaitToBeClickable("formTaskDetails:openPageArchive").click();
  }

  @Test
  void changePriority()
  {
    createTask("changePriorityTask", "Test change priority", 2);
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("changePriorityTask"), text("NORMAL"));
    awaitToBeClickable("formTaskDetails:openChangePriority").click();
    PrimeUi.selectOneRadio(By.id("formDetailsChangePriority"))
            .selectItemById("formDetailsChangePriority:priorityOptions:2_clone");
    awaitToBeClickable("formDetailsChangePriority:saveChangePriority").click();
    WfNavigator.taskList();
    awaitToBeClickable("buttonTaskDetail").click();
    $(By.id("taskDetailsList")).shouldHave(text("HIGH"));
    closeTask();
  }
}
