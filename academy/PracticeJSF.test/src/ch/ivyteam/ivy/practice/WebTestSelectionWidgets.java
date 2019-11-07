package ch.ivyteam.ivy.practice;


import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class WebTestSelectionWidgets extends BaseSeleniumTest
{
  @Test
  @Disabled()
  public void testSelectionWidgets() throws Exception
  {
    driver.get(baseUrlPracticeJSF + "150285E8A4FA463A/start.ivp");

    fillAndCheckInputText("form:name", "Meier");
    fillAndCheckInputText("form:firstName", "Hans");
    selectOneRadio("form:gender", "Male");
    fillAndCheckInputText("form:location", "Zug");
    driver.findElement(By.id("form:active")).click();
    selectFromCalendar("form:registrationDate_input", 13);
    clickFromSelection("form:colorMenu", "Orange");
  }

  private void fillAndCheckInputText(String positionId, String message)
  {
    driver.findElement(By.id("" + positionId + "")).sendKeys("" + message + "");
    assertEquals("" + message + "", driver.findElement(By.id("" + positionId + "")).getAttribute("value"));
  }

  private void selectOneRadio(String radioId, String label)
  {
    int numberToFind = findLabelPosition(radioId, label);
    selectOneRadioByNumber(radioId, numberToFind);
  }

  private int findLabelPosition(String id, String label)
  {
    List<WebElement> labels = driver.findElements(By.xpath("//*[@id='" + id + "']/tbody/tr/td/label"));
    for (int i = 0; i < labels.size(); i++)
    {
      if (labels.get(i).getText().equals(label))
      {
        return i;
      }
    }
    return -1;
  }
  
  private void selectOneRadioByNumber(String radioId, int number)
  {
    List<WebElement> radios = driver.findElements(
            By.xpath("//*[@id='" + radioId
                    + "']/tbody/tr/td/div/div/span[@class=\"ui-radiobutton-icon ui-icon ui-icon-blank\"]"));
    radios.get(number).click();
  }
}