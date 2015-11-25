package ch.ivyteam.ivy.practice;

import static org.junit.Assert.assertEquals;

import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class TestPracticeJSF
{
  private WebDriver driver;
  private String baseUrl;
  private String ivyApplication;

  @Before
  public void setUp() throws Exception
  {
    driver = new org.openqa.selenium.firefox.FirefoxDriver();
    driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    baseUrl = "http://localhost:8081/ivy/";
    ivyApplication = "designer";
  }

  @After
  public void tearDown() throws Exception
  {
    driver.quit();
  }

  @Test
  public void testValidationForm() throws Exception
  {
      driver.get(baseUrl + "pro/" + ivyApplication
              + "/PracticeJSF/1503D99612EE10F2/start.ivp");

      driver.findElement(By.id("form:proceed")).click();

      assertEquals("A name is required!", getErrorMessage(1));
      assertEquals("A first name is required!", getErrorMessage(2));
      assertEquals("A registrationdate is required!", getErrorMessage(3));

      driver.findElement(By.id("form:name")).sendKeys("Hans");
      driver.findElement(By.id("form:firstName")).sendKeys("Meier");
      driver.findElement(By.id("form:location")).sendKeys("Zug");
      driver.findElement(By.id("form:registrationDate_input")).click();
      driver.findElement(By.linkText("11")).click();
      await(ExpectedConditions.invisibilityOfElementLocated(By.id("ui-datepicker-div")));

      driver.findElement(By.id("form:proceed")).click();
      await(ExpectedConditions.urlContains("/ivy/wf/index.jsp"));
  }

  private void await(ExpectedCondition<?> condition)
  {
    new WebDriverWait(driver, 5).until(condition);
  }

  private String getErrorMessage(int number)
  {
    return driver.findElement(
            By.xpath("//div[@id='form:validationMsg']/div/ul/li[" + number + "]/span")).getText();
  }
}