package ch.ivyteam.ivy.practice;


import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class WebTestValidationForm extends BaseSeleniumTest
{
  @Test
  @Disabled
  public void testValidationForm() throws Exception
  {
      driver.get(baseUrlPracticeJSF + "1503D99612EE10F2/start.ivp");

      driver.findElement(By.id("form:proceed")).click();

      assertEquals("A name is required!", getErrorMessage(1));
      assertEquals("A first name is required!", getErrorMessage(2));
      assertEquals("A registrationdate is required!", getErrorMessage(3));

      driver.findElement(By.id("form:name")).sendKeys("Hans");
      driver.findElement(By.id("form:firstName")).sendKeys("Meier");
      driver.findElement(By.id("form:location")).sendKeys("Zug");
      selectFromCalendar("form:registrationDate_input", 11);

      driver.findElement(By.id("form:proceed")).click();
      await(ExpectedConditions.urlContains("/ivy/wf/index.jsp"));
  }

  private String getErrorMessage(int number)
  {
    return driver.findElement(
            By.xpath("//div[@id='form:validationMsg']/div/ul/li[" + number + "]/span")).getText();
  }
}