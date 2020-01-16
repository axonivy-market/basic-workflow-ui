package ch.ivyteam.ivy.project.jsf.wf.ui;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import ch.ivyteam.ivy.server.test.WfNavigator;


public class TestTemplate extends BaseWorkflowUiTest
{
  @Test
  public void testLogoutLogin() throws Exception
  {
    WfNavigator.home();
    awaitToBeClickable(By.xpath("/html/body/div[1]/div[2]/div[1]/div/ul/li[1]/a")).click();
    awaitToBeClickable(By.xpath("/html/body/div[1]/div[2]/div[1]/div/ul/li[1]/ul/li[2]/a")).click();
    $(By.id("loginForm")).shouldHave(text("Sign-in to BasicWorkflowUI"));
    login("user1", "user1");
    $(By.id("mainArea")).shouldHave(text("Logged in as: user1"));
  }
}
