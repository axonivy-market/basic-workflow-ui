package ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.ULCListSelectionModel;
import com.ulcjava.base.application.ULCTable;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Dimension;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for CaseNoteDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CaseNoteDisplayListPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RButton addNoteButton = null;
private RButton deleteNoteButton = null;
private RToolBar caseNoteActionsToolBar = null;
private RCollapsiblePane addNoteCollapsiblePane = null;
private RScrollPane caseNotesScrollPane = null;
private RTable caseNotesTable = null;
private RLabel footerLabel = null;
private RGridBagLayoutPane noteDetailsEditGridBagLayoutPane = null;
private RGridBagLayoutPane noteDetailsIdWritterCreationTimestampGridBagLayoutPane = null;
private RLabel noteIdLabel = null;
private RTextField noteIdTextField = null;
private RLabel noteWritterLabel = null;
private RTextField noteWritterTextField = null;
private RLabel noteCreationTimestampLabel = null;
private RTextField noteCreationTimestampTextField = null;
private RLabel messageLabel = null;
private RScrollPane noteScrollPane = null;
private RTextArea noteTextArea = null;
private RFlowLayoutPane addNoteFlowLayoutPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
  
  /**
   * Create a new instance of CaseNoteDisplayListPanel
   */
  public CaseNoteDisplayListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes CaseNoteDisplayListPanel
   * @return void
   */
  public void initialize()
  {
                this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(600,500));
                this.add(getCaseNoteActionsToolBar(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAddNoteCollapsiblePane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaseNotesScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFooterLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(529,511));
  }

/**
 * This method initializes addNoteButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getAddNoteButton() {
	if (addNoteButton == null) {
		addNoteButton = new RButton();
		addNoteButton.setName("addNoteButton");
		addNoteButton.setStyle("toolBarButton");
		addNoteButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/note/images/addNote24\")%>");
		addNoteButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/addNote\")%>");
	}
	return addNoteButton;
}

/**
 * This method initializes deleteNoteButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDeleteNoteButton() {
	if (deleteNoteButton == null) {
		deleteNoteButton = new RButton();
		deleteNoteButton.setName("deleteNoteButton");
		deleteNoteButton.setStyle("toolBarButton");
		deleteNoteButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/note/images/deleteNote24\")%>");
		deleteNoteButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/deleteNote\")%>");
	}
	return deleteNoteButton;
}

/**
 * This method initializes caseNoteActionsToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getCaseNoteActionsToolBar() {
	if (caseNoteActionsToolBar == null) {
		caseNoteActionsToolBar = new RToolBar();
		caseNoteActionsToolBar.setName("caseNoteActionsToolBar");
		caseNoteActionsToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseNoteActionsToolBar.setFloatable(false);
			caseNoteActionsToolBar.setName("caseNoteActionsToolBar");
	caseNoteActionsToolBar.add(getAddNoteButton());
		caseNoteActionsToolBar.add(getDeleteNoteButton());
	}
	return caseNoteActionsToolBar;
}

/**
 * This method initializes addNoteCollapsiblePane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane	
 */
private RCollapsiblePane getAddNoteCollapsiblePane() {
	if (addNoteCollapsiblePane == null) {
		addNoteCollapsiblePane = new RCollapsiblePane();
		addNoteCollapsiblePane.setName("addNoteCollapsiblePane");
		addNoteCollapsiblePane.setCollapsed(true);
		addNoteCollapsiblePane.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		addNoteCollapsiblePane.add(getNoteDetailsEditGridBagLayoutPane());
	}
	return addNoteCollapsiblePane;
}

/**
 * This method initializes caseNotesScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getCaseNotesScrollPane() {
	if (caseNotesScrollPane == null) {
		caseNotesScrollPane = new RScrollPane();
		caseNotesScrollPane.setName("caseNotesScrollPane");
			caseNotesScrollPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		caseNotesScrollPane.setBorder(BorderFactory.createTitledBorder(null, "Notes on the case", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
	caseNotesScrollPane.setViewPortView(getCaseNotesTable());
	}
	return caseNotesScrollPane;
}

/**
 * This method initializes caseNotesTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getCaseNotesTable() {
	if (caseNotesTable == null) {
		caseNotesTable = new RTable();
		caseNotesTable.setName("caseNotesTable");
		caseNotesTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_NEXT_COLUMN);
		caseNotesTable.setPreferredScrollableViewportSize(new Dimension(450, 200));
		caseNotesTable.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
		caseNotesTable.setSortable(true);
		caseNotesTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons false /version \"2.0\"/emptyTableText \"\"/columns {{/result \"result=entry.getIdentifier()\"/version \"2.0\"/tooltip \"result=entry.getIdentifier()\"/icon \"\"/header \"Note Id\"/field \"\"/columnWidth \"100\"}{/result \"result=entry.getMessage()\"/version \"2.0\"/tooltip \"result=entry.getMessage()\"/icon \"\"/header \"Message\"/field \"\"/columnWidth \"450\"}{/result \"result=entry.getWritterName()\"/version \"2.0\"/tooltip \"result=entry.getWritterName()\"/icon \"\"/header \"Writter\"/field \"\"/columnWidth \"200\"}{/result \"result=entry.getCreationTimestamp().toString()\"/version \"2.0\"/tooltip \"result=entry.getCreationTimestamp().toString()\"/icon \"\"/header \"Creation date\"/field \"\"}}}");
		caseNotesTable.setPreferredSize(new Dimension(250, 200));
	}
	return caseNotesTable;
}

/**
 * This method initializes footerLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFooterLabel() {
	if (footerLabel == null) {
		footerLabel = new RLabel();
		footerLabel.setText("...");
		footerLabel.setName("footerLabel");
	}
	return footerLabel;
}

/**
 * This method initializes noteDetailsEditGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getNoteDetailsEditGridBagLayoutPane() {
	if (noteDetailsEditGridBagLayoutPane == null) {
		RFiller aFiller2 = new RFiller();
		aFiller2.setStyleProperties("{/preferredSizeWidth \"100\"}");
		noteDetailsEditGridBagLayoutPane = new RGridBagLayoutPane();
		noteDetailsEditGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Case note details", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		noteDetailsEditGridBagLayoutPane.setName("noteDetailsEditGridBagLayoutPane");
		noteDetailsEditGridBagLayoutPane.add(getNoteDetailsIdWritterCreationTimestampGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsEditGridBagLayoutPane.add(getMessageLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsEditGridBagLayoutPane.add(getNoteScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsEditGridBagLayoutPane.add(getAddNoteFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsEditGridBagLayoutPane.add(aFiller2, new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return noteDetailsEditGridBagLayoutPane;
}

/**
 * This method initializes noteDetailsIdWritterCreationTimestampGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getNoteDetailsIdWritterCreationTimestampGridBagLayoutPane() {
	if (noteDetailsIdWritterCreationTimestampGridBagLayoutPane == null) {
		RFiller aFiller = new RFiller();
		aFiller.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/preferredSizeWidth \"100\"}");
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane = new RGridBagLayoutPane();
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.setName("noteDetailsIdWritterCreationTimestampGridBagLayoutPane");
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.setVisible(false);
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteIdTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteWritterLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteWritterTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteCreationTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteCreationTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return noteDetailsIdWritterCreationTimestampGridBagLayoutPane;
}

/**
 * This method initializes noteIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNoteIdLabel() {
	if (noteIdLabel == null) {
		noteIdLabel = new RLabel();
		noteIdLabel.setName("noteIdLabel");
		noteIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteId\")%>");
	}
	return noteIdLabel;
}

/**
 * This method initializes noteIdTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getNoteIdTextField() {
	if (noteIdTextField == null) {
		noteIdTextField = new RTextField();
		noteIdTextField.setName("noteIdTextField");
		noteIdTextField.setText("");
		noteIdTextField.setStyleProperties("{/weightX \"1\"}");
		noteIdTextField.setEditable(false);
	}
	return noteIdTextField;
}

/**
 * This method initializes noteWritterLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNoteWritterLabel() {
	if (noteWritterLabel == null) {
		noteWritterLabel = new RLabel();
		noteWritterLabel.setName("noteWritterLabel");
		noteWritterLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteWritter\")%>");
	}
	return noteWritterLabel;
}

/**
 * This method initializes noteWritterTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getNoteWritterTextField() {
	if (noteWritterTextField == null) {
		noteWritterTextField = new RTextField();
		noteWritterTextField.setName("noteWritterTextField");
		noteWritterTextField.setText("");
		noteWritterTextField.setStyleProperties("{/weightX \"1\"}");
		noteWritterTextField.setEditable(false);
	}
	return noteWritterTextField;
}

/**
 * This method initializes noteCreationTimestampLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNoteCreationTimestampLabel() {
	if (noteCreationTimestampLabel == null) {
		noteCreationTimestampLabel = new RLabel();
		noteCreationTimestampLabel.setName("noteCreationTimestampLabel");
		noteCreationTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteCreationTimestamp\")%>");
	}
	return noteCreationTimestampLabel;
}

/**
 * This method initializes noteCreationTimestampTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getNoteCreationTimestampTextField() {
	if (noteCreationTimestampTextField == null) {
		noteCreationTimestampTextField = new RTextField();
		noteCreationTimestampTextField.setName("noteCreationTimestampTextField");
		noteCreationTimestampTextField.setText("");
		noteCreationTimestampTextField.setStyleProperties("{/weightX \"1\"}");
		noteCreationTimestampTextField.setEditable(false);
	}
	return noteCreationTimestampTextField;
}

/**
 * This method initializes messageLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getMessageLabel() {
	if (messageLabel == null) {
		messageLabel = new RLabel();
		messageLabel.setName("messageLabel");
		messageLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteText\")%>");
	}
	return messageLabel;
}

/**
 * This method initializes noteScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getNoteScrollPane() {
	if (noteScrollPane == null) {
		noteScrollPane = new RScrollPane();
		noteScrollPane.setName("noteScrollPane");
		noteScrollPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		noteScrollPane.setViewPortView(getNoteTextArea());
	}
	return noteScrollPane;
}

/**
 * This method initializes noteTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getNoteTextArea() {
	if (noteTextArea == null) {
		noteTextArea = new RTextArea();
		noteTextArea.setName("noteTextArea");
		noteTextArea.setRows(5);
		noteTextArea.setColumns(20);
		noteTextArea.setStyleProperties("{/anchor \"WEST\"/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		noteTextArea.setText("");
	}
	return noteTextArea;
}

/**
 * This method initializes addNoteFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAddNoteFlowLayoutPane() {
	if (addNoteFlowLayoutPane == null) {
		addNoteFlowLayoutPane = new RFlowLayoutPane();
		addNoteFlowLayoutPane.setName("addNoteFlowLayoutPane");
		addNoteFlowLayoutPane.setAlignment(ULCFlowLayoutPane.RIGHT);
		addNoteFlowLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"}");
		addNoteFlowLayoutPane.add(getOkButton());
		addNoteFlowLayoutPane.add(getCancelButton());
	}
	return addNoteFlowLayoutPane;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setName("okButton");
		okButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/ok\")%>");
		okButton.setPreferredSize(new Dimension(100, 25));
	}
	return okButton;
}

/**
 * This method initializes cancelButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelButton() {
	if (cancelButton == null) {
		cancelButton = new RButton();
		cancelButton.setName("cancelButton");
		cancelButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/cancel\")%>");
		cancelButton.setPreferredSize(new Dimension(100, 25));
	}
	return cancelButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"