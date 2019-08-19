package ch.ivyteam.test.portal;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;

import io.github.bonigarcia.seljup.Options;
import io.github.bonigarcia.seljup.SeleniumExtension;

@ExtendWith(SeleniumExtension.class)
public class WebTestPortalIntegration
{
  @Options
  FirefoxOptions firefoxOptions = new FirefoxOptions();
  {
    FirefoxBinary binary = new FirefoxBinary();
    binary.addCommandLineOptions("--headless");
    firefoxOptions.setBinary(binary);
  }
  
  private PortalNavigator navigator;

  @BeforeEach
  public void setUp(FirefoxDriver driver)
  {
    navigator = new PortalNavigator(driver);
    navigator.login();
  }

  @Test
  public void test()
  {
    int repeat = Integer.parseInt(System.getProperty("junit.repeat", "1"));
    for(int i=0; i<repeat; i++)
    {
      clickTroughMainEntries();
    }
  }

  private void clickTroughMainEntries()
  {
    navigator.openDashboard();
    navigator.openProcesses();
    navigator.openTasks();
    navigator.openCases();
    navigator.openStatistics();
  }

  public static class PortalNavigator
  {
    private final WebDriver driver;

    public PortalNavigator(WebDriver driver)
    {
      this.driver = driver;
    }

    public void login()
    {
      driver.get(EngineUrl.process() + "/PortalTemplate/1549F58C18A6C562/PortalStart.ivp");
      try
      {
        driver.findElement(By.id("login:login-form:username"))
        .sendKeys("admin");
        driver.findElement(By.id("login:login-form:password"))
        .sendKeys("admin");
        driver.findElement(By.id("login:login-form:login-command"))
        .click();
      }
      catch (NoSuchElementException ex)
      {
        // assume already logged in.
      }
    }

    public void openDashboard()
    {
      if (driver.getTitle().startsWith("Dashboard"))
      { // skip;
        return;
      }
      driver.findElement(By.xpath("//a[span/text()='Dashboard']/i")).click();
    }

    public void openProcesses()
    {
      selectMenu("Processes");
    }

    public void openTasks()
    {
      selectMenu("Tasks");
    }

    public void openCases()
    {
      selectMenu("Cases");
    }

    public void openStatistics()
    {
      selectMenu("Statistics");
    }

    private void selectMenu(String menu)
    {
      if (driver.getTitle().startsWith("menu"))
      { // skip;
        return;
      }
      driver.findElement(By.xpath("//a[span/text()='" + menu + "']/span")).click();
    }
  }

}
