package ch.ivyteam.ivy.practice;

import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BaseSeleniumTest
{
  protected WebDriver driver;
  protected String baseUrl;
  protected String ivyApplication;

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

  protected void await(ExpectedCondition<?> condition)
  {
    new WebDriverWait(driver, 5).until(condition);
  }

}