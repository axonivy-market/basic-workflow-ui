package ch.ivyteam.ivy.practice;

import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BaseSeleniumTest
{
  protected WebDriver driver;
  protected String baseUrl;
  protected String ivyApplication;
  protected String baseUrlPracticeJSF;

  @Before
  public void setUp() throws Exception
  {
    driver = new org.openqa.selenium.firefox.FirefoxDriver();
    driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
    baseUrl = "http://localhost:8081/ivy/pro/";
    ivyApplication = "designer";
    baseUrlPracticeJSF = baseUrl + ivyApplication + "/PracticeJSF/";
  }

  @After
  public void tearDown() throws Exception
  {
    driver.quit();
  }

  protected void await(ExpectedCondition<?> condition)
  {
    new WebDriverWait(driver, 5).until(condition);
  }

  protected void clickFromSelection(String menuId, String label)
  {
    driver.findElement(By.id(menuId + "_label")).click();
    driver.findElement(By.xpath("//div[@id='" + menuId + "_panel']/div/ul/li[@data-label=\"" + label + "\"]"))
            .click();
  }

  protected void selectFromCalendar(String calendarId, int calendarDay)
  {
    driver.findElement(By.id("" + calendarId + "")).click();
    driver.findElement(By.linkText("" + calendarDay + "")).click();
    await(ExpectedConditions.invisibilityOfElementLocated(By.id("ui-datepicker-div")));
  }

}