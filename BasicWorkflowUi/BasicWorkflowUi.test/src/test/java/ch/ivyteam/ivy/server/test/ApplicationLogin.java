package ch.ivyteam.ivy.server.test;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;

import org.openqa.selenium.By;

public class ApplicationLogin
{

  public static void login(final String username, final String password)
  {
    WfNavigator.logout();
    $(By.id("loginForm:userName")).shouldBe(visible);

    setLoginFieldInternal("userName", username);
    setLoginFieldInternal("password", password);

    $(By.id("loginForm:login")).click();
    $(By.id("mainArea")).shouldHave(text("Home"));
  }

  private static void setLoginFieldInternal(String fieldName, final String value)
  {
    $(By.id("loginForm:" + fieldName)).shouldBe(visible).clear();
    $(By.id("loginForm:" + fieldName)).sendKeys(value);
  }

}