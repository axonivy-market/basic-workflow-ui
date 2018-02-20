package ch.ivyteam.htmldialog.demo;

import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;
import static org.openqa.selenium.support.ui.ExpectedConditions.visibilityOfElementLocated;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;



public class WebTestOther extends BaseWebTest
{

  @Test
  public void testHtmlBootstrapDemo() throws Exception
  {
    startProcess("145D1862CF17F2C9/Html5BootstrapDemo.ivp");
    driver.findElement(By.id("Form:Name")).sendKeys("name");
    driver.findElement(By.id("Form:Email")).sendKeys("email@ivyteam.ch");
    JavascriptExecutor js = (JavascriptExecutor) driver;
    js.executeScript("document.getElementById('Form:Birthdate').setAttribute('value', '2016-01-01')");
    driver.findElement(By.id("Form:Captcha")).sendKeys("21");
    driver.findElement(By.id("Submit")).click();
    await(textToBePresentInElementLocated(By.id("captchaError"),
            "Error!"));

    clearInput(By.id("Form:Captcha"));
    driver.findElement(By.id("Form:Captcha")).sendKeys("42");
    driver.findElement(By.id("Submit")).click();
    await(textToBePresentInElementLocated(By.id("messageSent"),
            "Hey name! Your message has been sent."));
  }

  @Test
  public void testAjaxMethodCall()
  {
    startProcess("145D1862CF17F2C9/MethodCallWithAjaxDemo.ivp");
    driver.findElement(By.id("hello")).click();

    await(textToBePresentInElementLocated(By.id("result"), "Welcome World"));

    driver.findElement(By.id("closeDialog")).click();
    await(textToBePresentInElementLocated(By.id("welcomeText"),
            "Welcome to Axon.ivy Html Dialog Demos"));
  }

  @Test
  public void testManagedBean()
  {
    startProcess("145D1862CF17F2C9/ManagedBeanDemo.ivp");
    String managedBeanPoperty = "this is immortal!";
    clearInput(By.id("beanForm:descriptionProperty"));
    driver.findElement(By.id("beanForm:descriptionProperty")).sendKeys(managedBeanPoperty);
    driver.findElement(By.id("beanForm:buttonSend")).click();

    openAndValidate(managedBeanPoperty);
    driver.quit();

    driver = createDriver();
    openAndValidate(managedBeanPoperty);
  }

  private void openAndValidate(String managedBeanPoperty)
  {
    startProcess("145D1862CF17F2C9/ManagedBeanDemo.ivp");
    await(visibilityOfElementLocated(By
            .xpath("//*[@id='beanForm:descriptionProperty'][@value='" + managedBeanPoperty + "']")));
  }

}
