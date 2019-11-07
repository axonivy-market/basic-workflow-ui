package ch.ivyteam.ivy.practice;

import java.util.concurrent.TimeUnit;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.extension.ExtendWith;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.github.bonigarcia.seljup.Options;
import io.github.bonigarcia.seljup.SeleniumExtension;

@ExtendWith(SeleniumExtension.class)
public abstract class BaseSeleniumTest
{ 
  @Options
  FirefoxOptions firefoxOptions = new FirefoxOptions();
  {
    FirefoxBinary binary = new FirefoxBinary();
    binary.addCommandLineOptions(System.getProperty("firefox.options","--headless"));
    firefoxOptions.setBinary(binary);
    firefoxOptions.setProfile(configureBrowserProfile());
  }
  
  protected WebDriver driver;
  protected String baseUrlPracticeJSF;

  @BeforeEach
  public void setUp(FirefoxDriver driver) throws Exception
  {
    driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    this.driver = driver;
    baseUrlPracticeJSF = EngineUrl.process() + "/PracticeJSF/";
  }

  protected FirefoxProfile configureBrowserProfile() 
  {
    FirefoxProfile profile = new FirefoxProfile();
    profile.setPreference("intl.accept_languages", "en"); 
    return profile;
  }

  @AfterEach
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