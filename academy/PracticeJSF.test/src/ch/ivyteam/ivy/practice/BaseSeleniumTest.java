package ch.ivyteam.ivy.practice;

import org.junit.jupiter.api.BeforeEach;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.axonivy.ivy.supplements.IvySelenide;
import com.codeborne.selenide.WebDriverRunner;

@IvySelenide
public abstract class BaseSeleniumTest
{ 
  
  protected WebDriver driver;
  protected String baseUrlPracticeJSF;

  @BeforeEach
  public void setUp()
  {
    driver = WebDriverRunner.getWebDriver();
    baseUrlPracticeJSF = EngineUrl.process() + "/PracticeJSF/";
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