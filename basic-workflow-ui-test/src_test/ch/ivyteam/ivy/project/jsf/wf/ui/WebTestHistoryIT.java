package ch.ivyteam.ivy.project.jsf.wf.ui;

import static com.codeborne.selenide.Condition.exist;
import static com.codeborne.selenide.Selenide.$;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.webtest.primeui.PrimeUi;
import com.axonivy.ivy.webtest.primeui.widget.Table;

import ch.ivyteam.ivy.server.test.WfNavigator;

class WebTestHistoryIT extends BaseWorkflowUiTest
{
  @Test
  void caseList()
  {
    createTask("case", "history", 1);
    // Workflow my cases (has the same view as admin cases)
    WfNavigator.caseList();
    
    Table dataTable = PrimeUi.table(By.id("caseListComponent:caseListForm:caseTable"));
    dataTable.contains("Test Workflow Jsf");
    dataTable.containsNot("Workflow administrator");
    // Workflow admin cases (has the same view as my cases)
    WfNavigator.caseAdmin();
    dataTable.contains("Test Workflow Jsf");
    closeTask();
  }

  @Test
  void taskHistory()
  {
    createTask("task", "history", 3);
    closeTask();
    WfNavigator.taskHistory();
    
    Table dataTable = PrimeUi.table(By.id("taskHistoryForm:taskHistoryTable"));
    dataTable.contains("JSF task");
    $(By.id("taskHistoryForm:taskHistoryTable")).find(".priority-low").should(exist);

    createTask("something4", "a description", 3);
    closeTask();
    WfNavigator.taskHistory();
    searchDataTable("taskHistoryForm:SearchTxt", "some th in 4");
    dataTable.firstRowContains("JSF something4");
  }
}
