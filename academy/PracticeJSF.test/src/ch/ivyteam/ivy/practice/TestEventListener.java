package ch.ivyteam.ivy.practice;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class TestEventListener extends BaseSeleniumTest
{
  @Test
  public void testEventListener() throws Exception
  {
    driver.get(baseUrlPracticeJSF + "15037D0942CC5A94/start.ivp");

    String echoMessage = driver.findElement(By.id("form:echo")).getText();
    assertEquals("", echoMessage);

    driver.findElement(By.id("form:message")).sendKeys("testing");
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("form:echo"), "testing"));

    clickFromSelection("form:gender", 3);
    selectOneContains("form:name", "Bruno");

    clickFromSelection("form:name", 2);

    driver.findElement(By.id("form:buttonSubmit")).click();
    await(ExpectedConditions.visibilityOfElementLocated(By.id("form:submittedMessage")));

    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("form:submittedMessage"), "Submit pressed!Data: testing Boy Bruno"));
  }

  private WebElement selectOneContains(String menuId, String label)
  {
    try
    {
      return driver.findElement(
              By.xpath("//div[@id='" + menuId + "_panel']/div/ul/li[@data-label=\"" + label + "\"]"));
    }
    catch (Exception ex)
    {
      throw new RuntimeException(
              "Could not find label '" + label + "' in select one menu with id '" + menuId + "'", ex);
    }
  }

  private void clickFromSelection(String menuId, int number)
  {
    driver.findElement(By.id(menuId + "_label")).click();
    driver.findElement(By.xpath("//div[@id='" + menuId + "_panel']/div/ul/li[" + number + "]")).click();
  }
}