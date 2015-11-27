package ch.ivyteam.ivy.practice;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;

public class TestDataTable extends BaseSeleniumTest
{
  @Test
  public void testDataTable() throws Exception
  {
    driver.get(baseUrlPracticeJSF + "15023C7F4FB3D031/start.ivp");

    checkFirstName("form:dataTable", "Yvonne");

    sortAndCheck("firstNameColumn", "Felix");
    sortAndCheck("firstNameColumn", "Yvonne");

    sortAndCheck("nameColumn", "Lara");
    sortAndCheck("nameColumn", "Felix");

    sortAndCheck("adressColumn", "Lara");
    sortAndCheck("adressColumn", "Yvonne");

    driver.findElement(By.id("form:dataTable:zipColumn:filter")).sendKeys("6000");
    checkFirstName("form:dataTable", "Felix");

    driver.findElement(By.id("form:dataTable:zipColumn:filter")).clear();
    driver.findElement(By.id("form:dataTable:zipColumn:filter")).sendKeys(Keys.ENTER);
    checkFirstName("form:dataTable", "Yvonne");

    sortCity("Zug", "Yvonne");
    sortCity("Cham", "Lara");
    sortCity("Luzern", "Felix");

    driver.findElement(By.id("form:buttonProceed")).click();
  }

  private void sortAndCheck(String sortId, String firstName)
  {
    driver.findElement(By.xpath("//th[@id='form:dataTable:" + sortId + "']")).click();
    checkFirstName("form:dataTable", firstName);
  }

  private void sortCity(String chooseText, String expectedFirstName)
  {
    new Select(driver.findElement(By.id("form:dataTable:cityColumn:filter"))).selectByVisibleText(chooseText);
    driver.findElement(By.cssSelector("option[value=\"" + chooseText + "\"]")).click();
    checkFirstName("form:dataTable", expectedFirstName);
  }

  private void checkFirstName(String id, String expectedName)
  {
    checkTableValue(id, 1, 2, expectedName);
  }

  private void checkTableValue(String id, int column, int row, String expectedValue)
  {
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.xpath("//*[@id='" + id + "_data']/tr[" + column + "]/td[" + row + "]"), expectedValue));
  }
}