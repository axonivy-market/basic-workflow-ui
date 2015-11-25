package ch.ivyteam.ivy.practice;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class TestValidationForm extends BaseSeleniumTest
{
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

  private String getErrorMessage(int number)
  {
    return driver.findElement(
            By.xpath("//div[@id='form:validationMsg']/div/ul/li[" + number + "]/span")).getText();
  }
}