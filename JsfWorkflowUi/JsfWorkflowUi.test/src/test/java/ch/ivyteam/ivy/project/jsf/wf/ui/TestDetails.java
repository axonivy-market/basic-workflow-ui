package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;


public class TestDetails extends BaseJsfWorkflowUiTest
{
  @Test
  public void testTaskDetails() throws Exception
  {
    createTask("task","Test if shows details", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.clickAndWaitForAjax(By.id("buttonTaskDetail"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("task");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Test if shows details");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("NORMAL");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("SUSPENDED");
    closeTask();
  }

  @Test
  public void testCaseDetails() throws Exception
  {
    createTask("case","Test if shows details", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseList.ivp");
    driverHelper.clickAndWaitForAjax(By.id("buttonCaseDetail"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Test Workflow Jsf");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Sample WF using Html Dialogs");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF case");
    closeTask();
  }
  
  @Test
  public void testAddNoteToTask() throws Exception
  {
    createTask("taskForAddNote","Test add note", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.clickAndWaitForAjax(By.id("buttonTaskDetail"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForAddNote");
    driverHelper.clickAndWaitForAjax(By.id("formTaskDetails:openAddNote"));
    driverHelper.findElementById("formAddNote:note").sendKeys("This is the description of the new note");
    driverHelper.clickAndWaitForAjax(By.id("formAddNote:saveNote"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("This is the description of the new note");
    closeTask();
  }
  
  @Test
  public void testAddNoteToCase() throws Exception
  {
    createTask("taskForAddNoteToCase","Test add note", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseList.ivp");
    driverHelper.clickAndWaitForAjax(By.id("buttonCaseDetail"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForAddNoteToCase");
    driverHelper.clickAndWaitForAjax(By.id("formCaseDetails:openAddNoteCase"));
    driverHelper.findElementById("formAddNote:note").sendKeys("This is the description of the new note");
    driverHelper.clickAndWaitForAjax(By.id("formAddNote:saveNote"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("This is the description of the new note");
    closeTask();
  }
  
  @Test
  public void testChangeExpiryToFuture() throws Exception
  {
    createTask("taskForChangeExpiry","Test change expiry", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.findElementById("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForChangeExpiry");
    driverHelper.findElementById("formTaskDetails:openChangeExpiry").click();
    driverHelper.findElementById("formDetailsChangeExpiry:expiryDate_input").click();
    driverHelper.findElementById("formDetailsChangeExpiry:expiryDate_input").sendKeys("30.04.2030");
    driverHelper.findElementById("formDetailsChangeExpiry:expiryTime_input").click();
    driverHelper.findElementById("formDetailsChangeExpiry:expiryTime_input").sendKeys("10:10");
    driverHelper.findElementById("formDetailsChangeExpiry:saveChangeExpiry").click();
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.findElementById("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("4/30/30 10:10 AM");
    closeTask();
  }
  
  @Test
  public void testChangeExpiryToPast() throws Exception
  {
    createTask("taskForChangeExpiryOlderDate","Test change expiry", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.findElementById("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForChangeExpiry");
    driverHelper.findElementById("formTaskDetails:openChangeExpiry").click();
    driverHelper.findElementById("formDetailsChangeExpiry:expiryDate_input").click();
    driverHelper.findElementById("formDetailsChangeExpiry:expiryDate_input").sendKeys("15.07.2013");
    driverHelper.findElementById("formDetailsChangeExpiry:expiryTime_input").click();
    driverHelper.findElementById("formDetailsChangeExpiry:expiryTime_input").sendKeys("10:10");
    driverHelper.findElementById("formDetailsChangeExpiry:saveChangeExpiry").click();
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("JSF taskForChangeExpiryOlderDate");
  }
  
  @Test
  public void testDelegateTask() throws Exception
  {
    createTask("taskDelegateTask","Test change expiry", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskDelegateTask");
    driverHelper.findElementById("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskDelegateTask");
    driverHelper.clickAndWaitForAjax(By.id("formTaskDetails:openDelegateTask"));
    driverHelper.findElement(By.cssSelector("span.ui-icon.ui-icon-triangle-1-s")).click();
    driverHelper.findElement(By.xpath("//div[@id='formDelegateTask:selectionOfUser_panel']/div[2]/ul/li[@data-label='Test User 1 (user1)']")).click();
    driverHelper.findElementById("formDelegateTask:saveDelegateTask").click();
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskDelegateTask");
    createTask("taskDelegateTaskToRole","Test delegate to role", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskDelegateTaskToRole");
    driverHelper.findElementById("buttonTaskDetail").click();
    driverHelper.findElementById("formTaskDetails:openDelegateTask").click();
    driverHelper.findElement(By.xpath("//div[@id='formDelegateTask:delegateToRole']/div[2]")).click();
    driverHelper.findElementById("formDelegateTask:saveDelegateTask").click();
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.findElementById("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Everybody");
    closeTask();
  }
  
  @Test
  public void testDestroyWorkflow() throws Exception
  {
    createTask("caseDestroyWorkflow","Test destroy workflow", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseList.ivp");
    driverHelper.findElementById("buttonCaseDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("caseDestroyWorkflow");
    driverHelper.findElementById("formCaseDetails:openDeleteCase").click();
    driverHelper.findElementById("formConfirmDeleteReset:confirmAction").click();
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("JSF caseDestroyWorkflow");
  }
  
  @Test
  public void testCancelDestroyWorkflow() throws Exception
  {
    createTask("caseCancelDestroyWorkflow","Test destroy workflow", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseList.ivp");
    driverHelper.findElementById("buttonCaseDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("caseCancelDestroyWorkflow");
    driverHelper.findElementById("formCaseDetails:openDeleteCase").click();
    driverHelper.findElementById("formConfirmDeleteReset:notConfirmAction").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("SUSPENDED");
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF caseCancelDestroyWorkflow");
    closeTask();
  }
  
  @Test
  public void testResetTask() throws Exception
  {
    createTask("resetTask","Test reset task", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.clickAndWaitForAjax(By.id("taskLinkRow_0"));
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.clickAndWaitForAjax(By.id("buttonTaskDetail"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("resetTask");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("RESUMED");
    driverHelper.clickAndWaitForAjax(By.id("formTaskDetails:openResetTask"));
    driverHelper.clickAndWaitForAjax(By.id("formConfirmDeleteReset:confirmAction"));
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.clickAndWaitForAjax(By.id("buttonTaskDetail"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("SUSPENDED");
    closeTask();
  }
  
  @Test
  public void testParkTask() throws Exception
  {
    createTask("parkTask","Test park task", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.clickAndWaitForAjax(By.id("taskLinkRow_0"));
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.clickAndWaitForAjax(By.id("buttonTaskDetail"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("parkTask");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("RESUMED");
    driverHelper.clickAndWaitForAjax(By.id("formTaskDetails:openParkTask"));
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.clickAndWaitForAjax(By.id("buttonTaskDetail"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("PARKED");
    closeTask();
  }
  
  @Test
  public void testPageArchive() throws Exception
  {
    createHtmlTask("pageArchive", "Test page archive");
    driverHelper.openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseList.ivp");
    driverHelper.clickAndWaitForAjax(By.id("buttonCaseDetail"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("A Html Case");
    driverHelper.clickAndWaitForAjax(By.id("formCaseDetails:openPageArchive"));
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.findElementById("taskLinkRow_0").click();
    driverHelper.clickAndWaitForAjax(By.id("submit"));
    driverHelper.openProcessLink("JsfWorkflowUi/13F2E007FE178DD4/TaskHistory.ivp");
    driverHelper.clickAndWaitForAjax(By.id("buttonTaskHistoryDetail"));
    driverHelper.clickAndWaitForAjax(By.id("formTaskDetails:openPageArchive"));
  }
  
  @Test
  public void testChangePriority() throws Exception
  {
    createTask("changePriorityTask","Test change priority", 2);
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.findElementById("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("changePriorityTask");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("NORMAL");
    driverHelper.findElementById("formTaskDetails:openChangePriority").click();
    driverHelper.findElement(By.xpath("//div[@id='formDetailsChangePriority:high']/div[2]")).click();
    driverHelper.findElementById("formDetailsChangePriority:saveChangePriority").click();
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.findElementById("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("HIGH");
    closeTask();
  }
}