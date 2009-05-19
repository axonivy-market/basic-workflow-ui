package ch.ivyteam.ivy.demo.dnd.SimpleDnd;

import ch.ivyteam.ivy.demo.dnd.SimpleDnd.TreeDndTransferHandler;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTree;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;

/**
 * RichDialog panel implementation for SimpleDndPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class SimpleDndPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane scrollPaneLeft = null;
private RScrollPane scrollPaneRight = null;
private RTree treeLeft = null;
private RTree treeRight = null;
private RFlowLayoutPane buttonPanel = null;
private RScrollPane scrollPaneLog = null;
private RTextArea textAreaLog = null;
private TreeDndTransferHandler dndTransferHandler;
private RButton resetButton = null;
  
  /**
   * Create a new instance of SimpleDndPanel
   */
  public SimpleDndPanel()
  {
    super();
    dndTransferHandler = new TreeDndTransferHandler(this);
    initialize();
  }
  
  /**
   * This method initializes SimpleDndPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(647,426));
        this.add(getScrollPaneLeft(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getScrollPaneRight(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButtonPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getScrollPaneLog(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes scrollPaneLeft	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPaneLeft() {
	if (scrollPaneLeft == null) {
		scrollPaneLeft = new RScrollPane();
		scrollPaneLeft.setName("scrollPaneLeft");
		scrollPaneLeft.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		scrollPaneLeft.setViewPortView(getTreeLeft());
	}
	return scrollPaneLeft;
}

/**
 * This method initializes scrollPaneRight	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPaneRight() {
	if (scrollPaneRight == null) {
		scrollPaneRight = new RScrollPane();
		scrollPaneRight.setName("scrollPaneRight");
		scrollPaneRight.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		scrollPaneRight.setViewPortView(getTreeRight());
	}
	return scrollPaneRight;
}

/**
 * This method initializes treeLeft	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTree	
 */
private RTree getTreeLeft() {
	if (treeLeft == null) {
		treeLeft = new RTree();
		treeLeft.setName("treeLeft");
		treeLeft.setDragEnabled(true);
		treeLeft.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons true /version \"2.0\"/columns {{/patterns {{/result \"result=node.value\"/version \"2.0\"/icon \"result=IF(node.info == \\\"left\\\",\\\"/Images/left\\\", \\\"/Images/right\\\")\"/patternMode \"ALL\"/patternValue \"default\"}}}}}");
		treeLeft.setTransferHandler(dndTransferHandler);
	}
	return treeLeft;
}

/**
 * This method initializes treeRight	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTree	
 */
private RTree getTreeRight() {
	if (treeRight == null) {
		treeRight = new RTree();
		treeRight.setName("treeRight");
		treeRight.setDragEnabled(true);
		treeRight.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons true /version \"2.0\"/columns {{/patterns {{/result \"result=node.value\"/version \"2.0\"/icon \"result=IF(node.info == \\\"left\\\",\\\"/Images/left\\\", \\\"/Images/right\\\")\"/patternMode \"ALL\"/patternValue \"default\"}}}}}");
		treeRight.setTransferHandler(dndTransferHandler);
	}
	return treeRight;
}

/**
 * This method initializes buttonPanel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getButtonPanel() {
	if (buttonPanel == null) {
		buttonPanel = new RFlowLayoutPane();
		buttonPanel.setName("buttonPanel");
		buttonPanel.add(getResetButton());
	}
	return buttonPanel;
}

/**
 * This method initializes scrollPaneLog	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPaneLog() {
	if (scrollPaneLog == null) {
		scrollPaneLog = new RScrollPane();
		scrollPaneLog.setName("scrollPaneLog");
		scrollPaneLog.setStyleProperties("{/fill \"BOTH\"/weightY \"0.3\"}");
		scrollPaneLog.setViewPortView(getTextAreaLog());
	}
	return scrollPaneLog;
}

/**
 * This method initializes textAreaLog	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getTextAreaLog() {
	if (textAreaLog == null) {
		textAreaLog = new RTextArea();
		textAreaLog.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,150));
		textAreaLog.setText("");
		textAreaLog.setRows(10);
		textAreaLog.setName("textAreaLog");
	}
	return textAreaLog;
}

/**
 * This method initializes resetButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getResetButton() {
	if (resetButton == null) {
		resetButton = new RButton();
		resetButton.setName("resetButton");
		resetButton.setText("Reset");
	}
	return resetButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"