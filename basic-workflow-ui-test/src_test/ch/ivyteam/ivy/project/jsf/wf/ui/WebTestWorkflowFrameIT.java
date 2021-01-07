package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.codeborne.selenide.WebDriverRunner;

import ch.ivyteam.ivy.server.test.WfNavigator;

class WebTestWorkflowFrameIT extends BaseWorkflowUiTest
{
  @Test
  void linkOpenEmbedInFrame()
  {
    WfNavigator.openProcessLink("testWfUi/13F3D94E5C99F06F/WfJsf.ivp");
    awaitToBePresent(By.id("formRequest:caption"));
    assertThat(WebDriverRunner.getWebDriver().getCurrentUrl()).endsWith("RequestDialog.xhtml");
    
    WfNavigator.openProcessLink("testWfUi/13F3D94E5C99F06F/WfJsf.ivp?embedInFrame");
    awaitToBePresent(By.id("iFrame"));
    assertThat(WebDriverRunner.getWebDriver().getCurrentUrl()).endsWith("Frame.xhtml");
  }
}
