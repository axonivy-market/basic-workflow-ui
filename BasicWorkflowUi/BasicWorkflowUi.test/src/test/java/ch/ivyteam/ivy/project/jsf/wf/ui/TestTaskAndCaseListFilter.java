package ch.ivyteam.ivy.project.jsf.wf.ui;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;
import com.axonivy.ivy.supplements.primeui.tester.widget.SelectOneMenu;
import com.axonivy.ivy.supplements.primeui.tester.widget.Table;
import com.codeborne.selenide.Selenide;

import ch.ivyteam.ivy.server.test.WfNavigator;

public class TestTaskAndCaseListFilter extends BaseWorkflowUiTest
{
  @Test
  public void testCaseFilter() throws Exception
  {
    createTaskWithCategory("something4", "this tests the search", 1, "category5");
    createHtmlTask("new Case with Html", "random description");

    createTaskWithCategory("caseForFilter1", "case list1", 1, "category1");
    WfNavigator.caseList();
    checkIfCaseIsInList("category1");

    createTaskWithCategory("caseForFilter2", "case list2", 2, "category2");
    WfNavigator.caseList();
    checkIfCaseIsInList("category2");

    createTaskWithCategory("caseForFilter3", "case list3", 3, "category3");
    WfNavigator.caseList();
    checkIfCaseIsInList("category3");

    checkIfFilterIsApplied("category1");
    doesNotContain("category2");
    checkIfFilterIsApplied("category2");
    doesNotContain("category3");
    checkIfFilterIsApplied("category3");
    doesNotContain("category1");
    closeTask();
    closeTask();
    closeTask();

    WfNavigator.caseList();
    searchDataTable("caseListComponent:caseListForm:SearchTxt", "Ht ml Ca se A");
    Table dataTable = PrimeUi.table(By.id("caseListComponent:caseListForm:caseTable"));
    dataTable.firstRowContains("A Html Case");
    closeHtmlTask();
  }

  @Test
  public void testStartedAndInvolvedCases() throws Exception
  {
    login("user1", "user1");
    createTaskWithCategory("caseForFilter4", "case list4", 1, "category4");

    WfNavigator.caseList();
    checkIfCaseIsInList("category4");

    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
    WfNavigator.caseList();
    doesNotContain("category4");

    switchInvolvedWorkflowList();
    checkIfCaseIsInList("category4");

    login("user1", "user1");
    closeTask();
  }

  private void checkIfCaseIsInList(final String category)
  {
    $(".ui-datatable").shouldHave(text(category));
  }

  private void switchInvolvedWorkflowList()
  {
    PrimeUi.selectOneRadio(By.id("caseListComponent:caseListForm"))
            .selectItemById("caseListComponent:caseListForm:caseOption:1");
  }

  private void checkIfFilterIsApplied(String filterForCategory)
  {
    WfNavigator.caseList();
    PrimeUi.selectOne(By.id("caseListComponent:caseListForm:categoryFilter")).selectItemByLabel(filterForCategory);
    PrimeUi.table(By.id("caseListComponent:caseListForm:caseTable")).contains(filterForCategory);
  }

  private void doesNotContain(String category)
  {
    $(By.id("caseListComponent:caseListForm:caseTable_data")).shouldNotHave(text(category));
  }

  @Test
  public void testTaskFilter() throws Exception
  {
    createTask("taskForFilterPrioHigh", "task list", 1);
    WfNavigator.taskList();
    awaitTextToBePresentIn(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterPrioHigh");

    createTask("taskForFilterLow", "task list", 3);
    WfNavigator.taskList();
    awaitTextToBePresentIn(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterLow");

    // test prio
    WfNavigator.taskList();
    SelectOneMenu menu = PrimeUi.selectOne(By.id("taskListComponent:taskListForm:priorityFilter"));
    menu.selectItemByLabel("LOW");
    menu = PrimeUi.selectOne(By.id("taskListComponent:taskListForm:responsibleFilter"));
    menu.selectItemByLabel("Everybody");
    Selenide.refresh();
    awaitTextToBePresentIn(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterLow");
    $(By.id("taskListComponent:taskListForm:taskTable_data")).shouldNotHave(text("taskForFilterPrioHigh"));

    WfNavigator.taskList();
    menu = PrimeUi.selectOne(By.id("taskListComponent:taskListForm:priorityFilter"));
    menu.selectItemByLabel("HIGH");
    menu = PrimeUi.selectOne(By.id("taskListComponent:taskListForm:responsibleFilter"));
    menu.selectItemByLabel("Everybody");
    Selenide.refresh();
    awaitTextToBePresentIn(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterPrioHigh");
    $(By.id("taskListComponent:taskListForm:taskTable_data")).shouldNotHave(text("taskForFilterLow"));

    delegateTaskToUser1("taskForFilterLow");

    // test responsible
    WfNavigator.taskList();
    menu = PrimeUi.selectOne(By.id("taskListComponent:taskListForm:responsibleFilter"));
    menu.selectItemByLabel("Everybody");
    awaitTextToBePresentIn(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterPrioHigh");
    closeTask();

    createTaskWithCategory("new Task", "this is a new Task", 2, "random category");
    WfNavigator.taskList();
    awaitTextToBePresentIn(
            By.id("taskListComponent:taskListForm:taskTable_data"), "new Task");

    // test searchbar
    WfNavigator.taskList();
    searchDataTable("taskListComponent:taskListForm:SearchTxt", "ne w T a sk");
    Table dataTable = PrimeUi.table(By.id("taskListComponent:taskListForm:taskTable"));
    dataTable.firstRowContains("JSF new Task");
    closeTask();
  }

  @Test
  public void testFilterWithPagination() throws Exception
  {
    for (int tasksCount = 0; tasksCount < 50; tasksCount++)
    {
      WfNavigator.openProcessLink("testWfUi/145A7190339D94FD/start.ivp");
    }
    createTask("taskHighForFilterPagination", "task pagination", 1);

    WfNavigator.taskList();
    awaitToBeClickable(By.xpath("//*[@id='taskListComponent:taskListForm:taskTable_paginator_bottom']/a[3]"));
    PrimeUi.selectOne(By.id("taskListComponent:taskListForm:priorityFilter")).selectItemByLabel("HIGH");
    PrimeUi.table(By.id("taskListComponent:taskListForm:taskTable")).contains("taskHighForFilterPagination");

    WfNavigator.openProcessLink("testWfUi/1466BC6311E70117/DestroyTasks.ivp");
  }

  @Test
  public void testTaskAdminResponsibleFilter() throws Exception
  {
    String taskHighResponsibleFilter = "taskAdminForResponsibleFilterHigh";
    String taskLowResponsibleFilter = "taskAdminForResponsibleFilterLow";
    String tableBodyId = "taskListComponent:taskListForm:taskTable_data";
    String filterId = "taskListComponent:taskListForm:responsibleFilter";

    createTask(taskHighResponsibleFilter, "task list", 1);
    WfNavigator.taskAdmin();
    Table dataTable = PrimeUi.table(By.id(tableBodyId));
    dataTable.contains(taskHighResponsibleFilter);

    createTask(taskLowResponsibleFilter, "task list", 3);
    WfNavigator.taskAdmin();
    dataTable.contains(taskLowResponsibleFilter);

    delegateTaskToUser1(taskLowResponsibleFilter);

    filterCheckDataTable(taskLowResponsibleFilter, taskHighResponsibleFilter, filterId, dataTable,
            "Everybody");

    filterCheckDataTable(taskHighResponsibleFilter, taskLowResponsibleFilter, filterId, dataTable,
            "Test User 1 (user1)");
  }

  private void delegateTaskToUser1(String taskName)
  {
    WfNavigator.taskList();
    Table dataTable = PrimeUi.table(By.id("taskListComponent:taskListForm:taskTable_data"));
    dataTable.contains(taskName);

    awaitToBeClickable("buttonTaskDetail").click();
    awaitToBeClickable("formTaskDetails:openDelegateTask").click();
    PrimeUi.selectOne(By.id("formDelegateTask:selectionOfUser")).selectItemByLabel(
            "Test User 1 (user1)");
    awaitToBeClickable("formDelegateTask:saveDelegateTask").click();
  }

  @Test
  public void testTaskAdminStatusFilter() throws Exception
  {
    String taskHighPrio = "taskAdminStatusFilterPrioHigh";
    String taskLowPrio = "taskAdminStatusFilterPrioLow";
    String tableBodyId = "taskListComponent:taskListForm:taskTable_data";
    String filterId = "taskListComponent:taskListForm:stateFilter";

    createTask(taskHighPrio, "task list", 1);
    WfNavigator.taskAdmin();
    Table dataTable = PrimeUi.table(By.id(tableBodyId));
    dataTable.contains(taskHighPrio);

    createTask(taskLowPrio, "task list", 3);
    WfNavigator.taskAdmin();
    dataTable.contains(taskLowPrio);

    WfNavigator.taskList();
    awaitToBeClickable("taskLinkRow_0").click();

    filterCheckDataTable(taskLowPrio, taskHighPrio, filterId, dataTable, "SUSPENDED");
    filterCheckDataTable(taskHighPrio, taskLowPrio, filterId, dataTable, "RESUMED");
  }

  private void filterCheckDataTable(String containsNot, String contains,
          String filterId, Table dataTable, String filterText)
  {
    WfNavigator.taskAdmin();
    PrimeUi.selectOne(By.id(filterId)).selectItemByLabel(filterText);
    dataTable.contains(contains);
    dataTable.containsNot(containsNot);
  }

}
