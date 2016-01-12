package ch.ivyteam.test;

import static org.assertj.core.api.Assertions.assertThat;
import org.junit.Test;

import ch.ivyteam.htmldialog.demo.other.managedBean.ApplicationDemoBean;

/**
 * <p style="color:red;">This test depends on the <b>HtmlDialogDemos</b> project.</p>
 * 
 * <ul>
 * 	<li>To run it in the Designer: import the HtmlDialogDemos into the workspace as well.</li>
 *  <li>To run it with maven:
 *  	<ol>
 *  	<li>build and install the HtmlDialogDemos into the local maven repository 
 *  by running "mvn clean install" in the root folder of the HtmlDialogDemos</li>
 *  	<li>run the tests within this project by invoking "mvn clean test" in the root folder of it.</li>
 *  </ol>
 * </ul>
 */
public class TestSimpleJavaBean {

	@Test
	public void accessBeanFromHtmlDialogDemos()
	{
		ApplicationDemoBean hdDemoBean = new ApplicationDemoBean();
		hdDemoBean.setDescription("my simple description");
		assertThat(hdDemoBean.getDescription()).startsWith("my simple");
	}
}
