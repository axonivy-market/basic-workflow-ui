package ch.ivyteam.ivy.addons.filemanager.FileManager;



import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;

import com.ulcjava.base.application.AbstractAction;
import com.ulcjava.base.application.ULCComponent;

import com.ulcjava.base.application.dnd.DataFlavor;
import com.ulcjava.base.application.dnd.DnDTreeData;
import com.ulcjava.base.application.dnd.TransferHandler;
import com.ulcjava.base.application.dnd.Transferable;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.KeyEvent;

import com.ulcjava.base.application.tree.TreePath;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.KeyStroke;

import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.components.RTree;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RProgressBar;

import ch.ivyteam.ivy.addons.filemanager.DocumentOnServer;
import ch.ivyteam.ivy.addons.filemanager.DesktopHandler.DesktopHandlerPanel;

import ch.ivyteam.ivy.addons.filemanager.DnDUtils;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.ULCTable;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;


/**
 * RichDialog panel implementation for updownloadPanePanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class FileManagerPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane filesTableScrollPane = null;
private RTable filesTable = null;
private RPopupMenu ServerFilePopupMenu = null;  //  @jve:decl-index=0:visual-constraint="1062,187"
private RMenuItem downloadMenuItem = null;
private RMenuItem deleteMenuItem = null;
private RTextField FileNameInvisibleTextField = null;
private RScrollPane treeScrollPane = null;
private RTree ordnersTree = null;
private RSplitPane SplitPane = null;
private RMenuItem uploadMenuItem = null;
private RMenuItem refreshMenuItem = null;
private RMenuItem showTreeMenuItem = null;
private RProgressBar ProgressBar = null;
@EmbeddedRichDialog(DesktopHandlerPanel.class) private ULCContainer desktopHandlerPanel = null;
private RMenuItem editMenuItem = null;
private RMenuItem newVersionMenuItem = null;
private RMenuItem showHiddeEditedFilesMenuItem = null;
private RMenuItem unlockMenuItem = null;
private RPopupMenu ServerDirPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="1061,241"
private RMenuItem newDirAtRootMenuItem = null;
private RMenuItem deleteDirectoryMenuItem = null;
private RMenuItem downloadDirContentMenuItem = null;
private TransferHandler transferHandler=null;
private RMenuItem toogleRecursiveMenuItem = null;
private RMenuItem copyMenuItem = null;
private RMenuItem pasteMenuItem = null;
private RMenuItem printMenuItem = null;
private RMenuItem refreshDirMenuItem = null;
private RButton unlockButton = null;
private RButton downloadButton = null;
private RButton editButton = null;
private RButton newCopyButton = null;
private RButton deleteButton = null;
private RButton refreshSelectedFolderButton = null;
private RButton printButton = null;
private RButton makeNewDirButton = null;
private RGridBagLayoutPane treeGridBagLayoutPane = null;
private RButton deleteDirButton = null;
private RGridBagLayoutPane GridBagLayoutPane = null;
private RButton refreshDirsButton = null;
private RButton downloadAllFilesButton = null;
private RButton toogleFileListingButton = null;
private RButton zipButton = null;
private RMenuItem zipMenuItem = null;
private RFlowLayoutPane pathChooserFlowLayoutPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
private RGridBagLayoutPane fileToolbarPane = null;
private RGridBagLayoutPane fileToolbarPane2 = null;
private RGridBagLayoutPane fileToolbarPane3 = null;
private RGridBagLayoutPane filesGridBagLayoutPane = null;
private RGridBagLayoutPane toolbarGridBagLayoutPane = null;
private RButton uploadButton = null;
private RLabel statusLabel = null;
private RGridBagLayoutPane buttonsGridBagLayoutPane = null;
private RGridBagLayoutPane buttonGroupGridBagLayoutPane = null;
private RMenuItem pasteMenuItemTable = null;
private AbstractAction deleteFilesAction=null;  //  @jve:decl-index=0:
private AbstractAction deleteDirectoryAction=null;  //  @jve:decl-index=0:
private AbstractAction closeAction = null;  //  @jve:decl-index=0:
private AbstractAction copyFilesAction;  //  @jve:decl-index=0:
private AbstractAction pasteFilesAction;  //  @jve:decl-index=0:
private AbstractAction renameFileAction;  //  @jve:decl-index=0:
/**
   * Create a new instance of FileManagerPanePanel
   */
  public FileManagerPanel()
  {
    super();
    initialize();
   
  }
  
  /**
   * This method initializes updownloadPanePanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(871,431));
        this.setStyle("fill-both");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(597,132));
         this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(874,786));
         this.add(getFileNameInvisibleTextField(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
       this.add(getSplitPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getProgressBar(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDesktopHandlerPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPathChooserFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getStatusLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
      
        
  }
  

/**
 * This method initializes filesTableScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getFilesTableScrollPane() {
	if (filesTableScrollPane == null) {
		filesTableScrollPane = new RScrollPane();
		filesTableScrollPane.setName("filesTableScrollPane");
		filesTableScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		filesTableScrollPane.setName("filesTableScrollPane");
		filesTableScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");

		filesTableScrollPane.setViewPortView(getFilesTable());
	}
	return filesTableScrollPane;
}

/**
 * This method initializes filesTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getFilesTable() {
	if (filesTable == null) {
		filesTable = new RTable();
		filesTable.setName("filesTable");
		filesTable.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		filesTable.setSortable(true);
		filesTable.setModelConfiguration("{/showTableheader \"true\"/autoTableheader \"false\"/showtooltip \"true\"/showIcons \"true\"/emptyTableText \"Keine Datei / Aucun Fichier / No File\"/version \"3.0\"/columns {{/result \"result=IF(entry.locked.trim().equals(\\\"1\\\"),entry.lockingUserID,\\\"\\\")\"/version \"3.0\"/tooltip \"result=IF(!entry.locked.trim().equals(\\\"1\\\"),ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/fileUnlocked\\\"),\\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/thisFile\\\")+\\\" \\\"+entry.filename+\\\" \\\" + \\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/isEditedBy\\\")+\\\" \\\"+entry.lockingUserID)\"/icon \"result=IF(!entry.locked.trim().equals(\\\"1\\\"),ivy.cms.cr(\\\"/ch/ivyteam/ivy/addons/icons/file/16\\\"),\\r\\nivy.cms.cr(\\\"/ch/ivyteam/ivy/addons/icons/lock/16\\\"))\"/header \"\\\"\\\"\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"18\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.filename\"/version \"3.0\"/tooltip \"result=\\\"<html><b>\\\"+\\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/fileDetails\\\")+\\\"</b><br>\\\"+\\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/createdBy\\\")+\\\" \\\"+entry.userID+\\\"<br>\\\"+\\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/creationDate\\\")+\\\" \\\"+entry.creationDate.toDate().format(\\\"dd-MM-yyyy\\\")+\\\"<br>\\\"+\\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/creationTime\\\")+\\\" \\\"+entry.creationTime+\\\"<br>\\\"+\\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/lastModifiedBy\\\")+\\\" \\\"+entry.modificationUserID+\\\"<br>\\\"+\\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/lastModifiedOn\\\")+\\\" \\\"+entry.modificationDate.toDate().format(\\\"dd-MM-yyyy\\\")+\\\"<br>\\\"+\\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/modificationTime\\\")+\\\" \\\"+entry.modificationTime+\\\"<br>\\\"+\\r\\n\\\"</html>\\\"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/fileName\\\")\"/field \"\"/editable \"\"/columnWidth \"150\"/columnStyle \"\"}{/result \"result=entry.fileSize\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/fileSize\\\")\"/field \"\"/editable \"\"/columnWidth \"80\"/columnStyle \"\"}{/result \"result=entry.path\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/path\\\")\"/field \"\"/editable \"\"/condition \"false\"/columnWidth \"70\"}{/result \"result=entry.userID\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/createdBy\\\")\"/field \"\"/editable \"\"/condition \"true\"/columnWidth \"70\"}{/result \"result=entry.creationDate.toDate().format(\\\"dd-MM-yyyy\\\")\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/creationDate\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"70\"/columnStyle \"alignCenter\"}{/result \"result=entry.creationTime\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/creationTime\\\")\"/field \"\"/editable \"\"/condition \"true\"/columnWidth \"70\"/columnStyle \"alignCenter\"}{/result \"result=entry.modificationUserID\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/lastModifiedBy\\\")\"/field \"\"/editable \"\"/condition \"false\"/columnWidth \"165\"/columnStyle \"\"}{/result \"result=entry.modificationDate.toDate().format(\\\"dd-MM-yyyy\\\")\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/lastModifiedOn\\\")\"/field \"\"/editable \"\"/condition \"false\"/columnWidth \"165\"/columnStyle \"alignCenter\"}{/result \"result=entry.modificationTime\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/modificationTime\\\")\"/field \"\"/editable \"\"/condition \"false\"/columnWidth \"165\"/columnStyle \"alignCenter\"}}}");
		filesTable.setRowHeight(22);
		filesTable.setRowMargin(2);
		filesTable.setFont(new Font("Tahoma", 0, 12));
		filesTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
		filesTable.setComponentPopupMenu(getServerFilePopupMenu());
		filesTable.setDragEnabled(true);
		filesTable.registerKeyboardAction(getActionForDeleteFiles(), KeyStroke.getKeyStroke(KeyEvent.VK_DELETE,0), WHEN_FOCUSED);
		filesTable.registerKeyboardAction(getCopyFilesAction(), KeyStroke.getKeyStroke(KeyEvent.VK_C,KeyEvent.CTRL_DOWN_MASK), WHEN_FOCUSED);
		filesTable.registerKeyboardAction(getPasteFilesAction(), KeyStroke.getKeyStroke(KeyEvent.VK_V,KeyEvent.CTRL_DOWN_MASK), WHEN_FOCUSED);
		filesTable.registerKeyboardAction(getRenameFileAction(), KeyStroke.getKeyStroke(KeyEvent.VK_F2,0), WHEN_FOCUSED);
	}
	return filesTable;
}
/**
 * This method initializes deleteFilesAction
 * 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getActionForDeleteFiles(){
	if(deleteFilesAction==null)
	{
		deleteFilesAction= new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doActionForDeleteFiles();
				
			}
			
		};
	}
	return deleteFilesAction;
}
/**
 * makes the methode call for delete selected files 
 *
 */
private void doActionForDeleteFiles(){
	try{
		this.getPanelAPI().callMethod("_deleteSelectedFiles", new Object [0]);
		
	}catch(Exception ex){
		
	}
}

/**
 * This method initializes renameFileAction
 * 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getRenameFileAction(){
	if(renameFileAction==null)
	{
		renameFileAction= new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doRenameFileAction();
				
			}
			
		};
	}
	return renameFileAction;
}
/**
 * makes the methode call for renaming selected file
 *
 */
private void doRenameFileAction(){
	try{
		this.getPanelAPI().callMethod("_renameFile", new Object [0]);
		
	}catch(Exception ex){
		
	}
}

/**
 * This method initializes copyFilessAction
 * 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getCopyFilesAction(){
	if(copyFilesAction==null)
	{
		copyFilesAction= new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doActionCopyFiles();
				
			}
			
		};
	}
	return copyFilesAction;
}
/**
 * makes the methode call for copy selected files 
 *
 */
private void doActionCopyFiles(){
	try{
		this.getPanelAPI().callMethod("_copyFiles", new Object [0]);
		
	}catch(Exception ex){
		
	}
}

/**
 * This method initializes pasteFilesAction
 * 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getPasteFilesAction(){
	if(pasteFilesAction==null)
	{
		pasteFilesAction= new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doActionPasteFiles();
				
			}
			
		};
	}
	return pasteFilesAction;
}
/**
 * makes the methode call for paste copied files 
 *
 */
private void doActionPasteFiles(){
	try{
		this.getPanelAPI().callMethod("_pasteFiles", new Object [0]);
		
	}catch(Exception ex){
		
	}
}

/**
 * This method initializes ServerFilePopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getServerFilePopupMenu() {
	if (ServerFilePopupMenu == null) {
		ServerFilePopupMenu = new RPopupMenu();
		ServerFilePopupMenu.setName("ServerFilePopupMenu");
		ServerFilePopupMenu.add(getUploadMenuItem());
		ServerFilePopupMenu.add(getDownloadMenuItem());
		ServerFilePopupMenu.add(getEditMenuItem());
		ServerFilePopupMenu.add(getPrintMenuItem());
		ServerFilePopupMenu.add(getNewVersionMenuItem());
		ServerFilePopupMenu.add(getCopyMenuItem());
		ServerFilePopupMenu.add(getPasteMenuItemTable());
		ServerFilePopupMenu.add(getZipMenuItem());
		ServerFilePopupMenu.add(getDeleteMenuItem());
		ServerFilePopupMenu.add(getRefreshMenuItem());
		ServerFilePopupMenu.add(getShowTreeMenuItem());
		ServerFilePopupMenu.add(getShowHiddeEditedFilesMenuItem());
		ServerFilePopupMenu.add(getUnlockMenuItem());
	}
	return ServerFilePopupMenu;
}

/**
 * This method initializes downloadMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDownloadMenuItem() {
	if (downloadMenuItem == null) {
		downloadMenuItem = new RMenuItem();
		downloadMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/download\")%>");
		downloadMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/down/16\")%>");
		downloadMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/download\")%>");
		downloadMenuItem.setEnabler(getFileNameInvisibleTextField());
		downloadMenuItem.setName("downloadMenuItem");
	}
	return downloadMenuItem;
}

/**
 * This method initializes deleteMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDeleteMenuItem() {
	if (deleteMenuItem == null) {
		deleteMenuItem = new RMenuItem();
		deleteMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/delete\")%>");
		deleteMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/delete/16\")%>");
		deleteMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/deleteFiles\")%>");
		deleteMenuItem.setEnabler(getFileNameInvisibleTextField());
		deleteMenuItem.setName("deleteMenuItem");
	}
	return deleteMenuItem;
}

/**
 * This method initializes FileNameInvisibleTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getFileNameInvisibleTextField() {
	if (FileNameInvisibleTextField == null) {
		FileNameInvisibleTextField = new RTextField();
		FileNameInvisibleTextField.setText("");
		FileNameInvisibleTextField.setVisible(false);
		FileNameInvisibleTextField.setMandatory(true);
		FileNameInvisibleTextField.setValidation("StringWithoutSpaceAtTheEndAndBegin");
		FileNameInvisibleTextField.setDisabledTextColor(new Color(160, 160, 160));
		FileNameInvisibleTextField.setName("FileNameInvisibleTextField");
	}
	return FileNameInvisibleTextField;
}

/**
 * This method initializes treeScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getTreeScrollPane() {
	if (treeScrollPane == null) {
		treeScrollPane = new RScrollPane();
		treeScrollPane.setName("treeScrollPane");
		treeScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		treeScrollPane.setViewPortView(getOrdnersTree());
	}
	return treeScrollPane;
}

/**
 * This method initializes ordnersTree	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTree	
 */
private RTree getOrdnersTree() {
	if (ordnersTree == null) {
		ordnersTree = new RTree();
		ordnersTree.setName("ordnersTree");
		ordnersTree.setModelConfiguration("{/dynamicTreeLoadMode \"LOAD_FOR_RENDER_PARENT\"/version \"3.0\"/showTableheader true /autoTableheader false /showtooltip false /showIcons true /emptyTableText \"\"/columns {{/patterns {{/result \"result=\\\"Folder\\\"\"/version \"3.0\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/addons/icons/folder/16\\\")\"/patternMode \"ALL\"/patternValue \"default\"}{/result \"result=entry.name\"/version \"3.0\"/patternMode \"INSTANCE\"/patternValue \"ch.ivyteam.ivy.addons.filemanager.FolderOnServer\"}}/version \"3.0\"}}}");
		ordnersTree.setComponentPopupMenu(getServerDirPopupMenu());
		ordnersTree.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		//ordnersTree.setDragEnabled(true);
		ordnersTree.setTransferHandler(getTransferHandler());
		ordnersTree.registerKeyboardAction(getActionForDeleteDirectory(), KeyStroke.getKeyStroke(KeyEvent.VK_DELETE,0), WHEN_FOCUSED);
		ordnersTree.registerKeyboardAction(getPasteFilesAction(), KeyStroke.getKeyStroke(KeyEvent.VK_V,KeyEvent.CTRL_DOWN_MASK), WHEN_FOCUSED);
	}
	return ordnersTree;
}
/**
 * This method initializes deleteDirectoryAction
 * 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getActionForDeleteDirectory(){
	if(deleteDirectoryAction==null)
	{
		deleteDirectoryAction= new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doActionForDeleteDirectory();
			}
			
		};
	}
	return deleteDirectoryAction;
}
/**
 * makes the methode call for delete selected files 
 *
 */
private void doActionForDeleteDirectory(){
	try{
		this.getPanelAPI().callMethod("_deleteSelectedDirectory", new Object [0]);
		
	}catch(Exception ex){
		
	}
}

/**
 * This method initializes SplitPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane	
 */
private RSplitPane getSplitPane() {
	if (SplitPane == null) {
		SplitPane = new RSplitPane();
		SplitPane.setName("SplitPane");
		SplitPane.setStyleProperties("{/dividerLocation \"0.3\"/insetsTop \"4\"/fill \"BOTH\"/insetsLeft \"4\"/weightY \"2\"/weightX \"1\"}");
		SplitPane.setOneTouchExpandable(true);
		SplitPane.setRightComponent(getGridBagLayoutPane());
		SplitPane.setLeftComponent(getTreeGridBagLayoutPane());
	}
	return SplitPane;
}

/**
 * This method initializes uploadMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getUploadMenuItem() {
	if (uploadMenuItem == null) {
		uploadMenuItem = new RMenuItem();
		uploadMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/upload\")%>");
		uploadMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/up/16\")%>");
		uploadMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/upload\")%>");
		uploadMenuItem.setName("uploadMenuItem");
	}
	return uploadMenuItem;
}

/**
 * This method initializes refreshMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getRefreshMenuItem() {
	if (refreshMenuItem == null) {
		refreshMenuItem = new RMenuItem();
		refreshMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/refresh\")%>");
		refreshMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/refresh/16\")%>");
		refreshMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/refresh\")%>");
		refreshMenuItem.setName("refreshMenuItem");
	}
	return refreshMenuItem;
}

/**
 * This method initializes showTreeMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getShowTreeMenuItem() {
	if (showTreeMenuItem == null) {
		showTreeMenuItem = new RMenuItem();
		showTreeMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/showHiddeFolderTree\")%>");
		showTreeMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/search/16\")%>");
		showTreeMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/showHiddeFoldersTree\")%>");
		showTreeMenuItem.setName("showTreeMenuItem");
	}
	return showTreeMenuItem;
}

/**
 * This method initializes ProgressBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RProgressBar	
 */
private RProgressBar getProgressBar() {
	if (ProgressBar == null) {
		ProgressBar = new RProgressBar();
		ProgressBar.setName("ProgressBar");
		ProgressBar.setStringPainted(true);
		ProgressBar.setPreferredSize(new com.ulcjava.base.application.util.Dimension(200,18));
		ProgressBar.setOpaque(true);
		ProgressBar.setMinimumSize(new com.ulcjava.base.application.util.Dimension(100,18));
		ProgressBar.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"2\"}");
	}
	return ProgressBar;
}

/**
 * This method initializes desktopHandlerPanel	
 * 	
 * @return ch.xpertline.common.ria.component.DesktopHandler.DesktopHandlerPanel	
 */
private ULCContainer getDesktopHandlerPanel()  {
	if (desktopHandlerPanel == null) {
		desktopHandlerPanel = RichDialogPanelFactory.create(DesktopHandlerPanel.class);
		desktopHandlerPanel.setName("desktopHandlerPanel");
		desktopHandlerPanel.setPreferredSize(new com.ulcjava.base.application.util.Dimension(200,200));
		desktopHandlerPanel.setName("desktopHandlerPanel");
		desktopHandlerPanel.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
	}
	return desktopHandlerPanel;
}

/**
 * This method initializes editMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getEditMenuItem() {
	if (editMenuItem == null) {
		editMenuItem = new RMenuItem();
		editMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/edit\")%>");
		editMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/write/16\")%>");
		editMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/edit\")%>");
		editMenuItem.setEnabler(getFileNameInvisibleTextField());
		editMenuItem.setName("editMenuItem");
	}
	return editMenuItem;
}

/**
 * This method initializes newVersionMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getNewVersionMenuItem() {
	if (newVersionMenuItem == null) {
		newVersionMenuItem = new RMenuItem();
		newVersionMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/renameFile\")%>");
		newVersionMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/copy/16\")%>");
		newVersionMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/renameFile\")%>");
		newVersionMenuItem.setEnabler(getFileNameInvisibleTextField());
		newVersionMenuItem.setName("newVersionMenuItem");
	}
	return newVersionMenuItem;
}

/**
 * This method initializes showHiddeEditedFilesMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getShowHiddeEditedFilesMenuItem() {
	if (showHiddeEditedFilesMenuItem == null) {
		showHiddeEditedFilesMenuItem = new RMenuItem();
		showHiddeEditedFilesMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/showHiddeEditedFiles\")%>");
		showHiddeEditedFilesMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/search/16\")%>");
		showHiddeEditedFilesMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/showHiddeEditedFIles\")%>");
		showHiddeEditedFilesMenuItem.setName("showHiddeEditedFilesMenuItem");
	}
	return showHiddeEditedFilesMenuItem;
}

/**
 * This method initializes unlockMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getUnlockMenuItem() {
	if (unlockMenuItem == null) {
		unlockMenuItem = new RMenuItem();
		unlockMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/unlockSelectedFiles\")%>");
		unlockMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/unlock/16\")%>");
		unlockMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/unlockFiles\")%>");
		unlockMenuItem.setEnabler(getFileNameInvisibleTextField());
		unlockMenuItem.setName("unlockMenuItem");
	}
	return unlockMenuItem;
}

/**
 * This method initializes ServerDirPopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getServerDirPopupMenu() {
	if (ServerDirPopupMenu == null) {
		ServerDirPopupMenu = new RPopupMenu();
		ServerDirPopupMenu.setName("ServerDirPopupMenu");
		ServerDirPopupMenu.setVisible(true);
		ServerDirPopupMenu.setEnabled(false);
		ServerDirPopupMenu.add(getNewDirAtRootMenuItem());
		ServerDirPopupMenu.add(getDeleteDirectoryMenuItem());
		ServerDirPopupMenu.add(getRefreshDirMenuItem());
		ServerDirPopupMenu.add(getPasteMenuItem());
		ServerDirPopupMenu.add(getDownloadDirContentMenuItem());
		ServerDirPopupMenu.add(getToogleRecursiveMenuItem());
	}
	return ServerDirPopupMenu;
}

/**
 * This method initializes newDirAtRootMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getNewDirAtRootMenuItem() {
	if (newDirAtRootMenuItem == null) {
		newDirAtRootMenuItem = new RMenuItem();
		newDirAtRootMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/makeNewDir\")%>");
		newDirAtRootMenuItem.setEnabled(true);
		newDirAtRootMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/folder/16\")%>");
		newDirAtRootMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/makeNewDir\")%>");
		newDirAtRootMenuItem.setName("newDirAtRootMenuItem");
	}
	return newDirAtRootMenuItem;
}

/**
 * This method initializes deleteDirectoryMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDeleteDirectoryMenuItem() {
	if (deleteDirectoryMenuItem == null) {
		deleteDirectoryMenuItem = new RMenuItem();
		deleteDirectoryMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/deleteDirectory\")%>");
		deleteDirectoryMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/delete/16\")%>");
		deleteDirectoryMenuItem.setEnabled(true);
		deleteDirectoryMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/deleteFolder\")%>");
		deleteDirectoryMenuItem.setName("deleteDirectoryMenuItem");
	}
	return deleteDirectoryMenuItem;
}

/**
 * This method initializes downloadDirContentMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDownloadDirContentMenuItem() {
	if (downloadDirContentMenuItem == null) {
		downloadDirContentMenuItem = new RMenuItem();
		downloadDirContentMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/downloadFolderFiles\")%>");
		downloadDirContentMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/files/16\")%>");
		downloadDirContentMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/downloadContentOfFolder\")%>");
		downloadDirContentMenuItem.setName("downloadDirContentMenuItem");
	}
	return downloadDirContentMenuItem;
}

public TransferHandler getTransferHandler() {
	final IRichDialogPanel panel = this;
	if (transferHandler == null) {
		transferHandler = new TransferHandler() {
			private static final long serialVersionUID = 1L;
			
			@Override
			public int getSourceActions(ULCComponent comp) {
				return TransferHandler.ACTION_COPY;
			}
			
			@Override
			public int getTargetActions(ULCComponent comp) {
				return TransferHandler.ACTION_COPY;
			}
			
			
			@Override
			public void exportDone(ULCComponent arg0, Transferable arg1, int arg2) {
				
			}

			@Override
			public boolean importData(ULCComponent arg0, Transferable arg1) {
				Object o = arg1.getTransferData(DataFlavor.DROP_FLAVOR);
				String newPath="";
				boolean b = false;
				java.util.ArrayList<DocumentOnServer> docsToMove= new java.util.ArrayList<DocumentOnServer>();
				if(o!=null && o instanceof DnDTreeData){
					DnDTreeData target = (DnDTreeData) o;
					TreePath[] paths = target.getTreePaths();
					
					for(TreePath t: paths){
						Object[] oo = t.getPath();
						if(oo.length==1){
							newPath="";
						}else{
							for(int i = 1; i<oo.length;i++)
								newPath+=oo[i].toString()+"\\";
						}
					}
					if(paths.length<1)
						newPath=null;
				}
				if(newPath!=null){
					java.util.List values = DnDUtils.getDraggedValues(arg1);
					
					for(Object ob: values){
						if(ob instanceof DocumentOnServer){
							DocumentOnServer doc = (DocumentOnServer) ob;
							docsToMove.add(doc);

							//Ivy.log().debug(doc.getFilename()+" goes to "+newPath);
						}
					}
					try{
						panel.getPanelAPI().callMethod("_moveFile", new Object[]{newPath, docsToMove});
						b=true;
					}catch(Exception ex){
						Ivy.log().debug("Exception in Filemanager DnD ImportData: "+ex.getMessage(),ex);
						b= false;
					}catch(Throwable t){
						Ivy.log().debug("Throwable in Filemanager DnD ImportData: "+t.getMessage(),t);
						b= false;
					}
				}
				return b;
			}

		};
	}
	return transferHandler;
}

/**
 * This method initializes toogleRecursiveMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getToogleRecursiveMenuItem() {
	if (toogleRecursiveMenuItem == null) {
		toogleRecursiveMenuItem = new RMenuItem();
		toogleRecursiveMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/swithFileFiltering\")%>");
		toogleRecursiveMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/fileSharing/16\")%>");
		toogleRecursiveMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/toogleFileListing\")%>");
		toogleRecursiveMenuItem.setName("toogleRecursiveMenuItem");
	}
	return toogleRecursiveMenuItem;
}

/**
 * This method initializes copyMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getCopyMenuItem() {
	if (copyMenuItem == null) {
		copyMenuItem = new RMenuItem();
		copyMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/copy\")%>");
		copyMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/copy/16\")%>");
		copyMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/copyFiles\")%>");
		copyMenuItem.setEnabler(getFileNameInvisibleTextField());
		copyMenuItem.setName("copyMenuItem");
	}
	return copyMenuItem;
}

/**
 * This method initializes pasteMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getPasteMenuItem() {
	if (pasteMenuItem == null) {
		pasteMenuItem = new RMenuItem();
		pasteMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/Paste\")%>");
		pasteMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/copy/16\")%>");
		pasteMenuItem.setName("pasteMenuItem");
	}
	return pasteMenuItem;
}

/**
 * This method initializes printMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getPrintMenuItem() {
	if (printMenuItem == null) {
		printMenuItem = new RMenuItem();
		printMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/print\")%>");
		printMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/print/16\")%>");
		printMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/print\")%>");
		printMenuItem.setEnabler(getFileNameInvisibleTextField());
		printMenuItem.setName("printMenuItem");
	}
	return printMenuItem;
}

/**
 * This method initializes refreshDirMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getRefreshDirMenuItem() {
	if (refreshDirMenuItem == null) {
		refreshDirMenuItem = new RMenuItem();
		refreshDirMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/refresh\")%>");
		refreshDirMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/refresh/16\")%>");
		refreshDirMenuItem.setName("refreshDirMenuItem");
	}
	return refreshDirMenuItem;
}

/**
 * This method initializes unlockButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getUnlockButton() {
	if (unlockButton == null) {
		unlockButton = new RButton();
		unlockButton.setBorderPainted(false);
		unlockButton.setName("unlockButton");
		unlockButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/unlockFiles\")%>");
		unlockButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/unlockSelectedFiles\")%>");
		unlockButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/unlock/16\")%>");
		unlockButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/unlock/24\")%>");
		unlockButton.setPressedIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/unlock/24\")%>");
		unlockButton.setEnabler(getFileNameInvisibleTextField());
		unlockButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}/insetsBottom \"0\"/insetsTop \"0\"/fill \"HORIZONTAL\"/insetsRight \"0\"/insetsLeft \"0\"}");
		unlockButton.setStyle("toolBarSmall");
	}
	return unlockButton;
}

/**
 * This method initializes downloadButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDownloadButton() {
	if (downloadButton == null) {
		downloadButton = new RButton();
		downloadButton.setName("downloadButton");
		downloadButton.setBorderPainted(false);
		downloadButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/download\")%>");
		downloadButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/download\")%>");
		downloadButton.setStyle("toolBarSmall");
		downloadButton.setPressedIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/down/24\")%>");
		downloadButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/down/24\")%>");
		downloadButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}/insetsBottom \"0\"/insetsTop \"0\"/fill \"HORIZONTAL\"/insetsRight \"0\"/insetsLeft \"0\"}");
		downloadButton.setEnabler(getFileNameInvisibleTextField());
		downloadButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/down/16\")%>");
	}
	return downloadButton;
}

/**
 * This method initializes editButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getEditButton() {
	if (editButton == null) {
		editButton = new RButton();
		editButton.setName("editButton");
		editButton.setBorderPainted(false);
		editButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/edit\")%>");
		editButton.setStyle("toolBarBig");
		editButton.setStyleProperties("{/anchor \"CENTER\"/insetsTop \"0\"/fill \"NONE\"/insetsLeft \"0\"}");
		editButton.setEnabler(getFileNameInvisibleTextField());
		editButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/write/48\")%>");
	}
	return editButton;
}

/**
 * This method initializes newCopyButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getNewCopyButton() {
	if (newCopyButton == null) {
		newCopyButton = new RButton();
		newCopyButton.setName("newCopyButton");
		newCopyButton.setBorderPainted(false);
		newCopyButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/copyFiles\")%>");
		newCopyButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/copy\")%>");
		newCopyButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}/insetsBottom \"0\"/insetsTop \"0\"/insetsRight \"0\"/fill \"HORIZONTAL\"/insetsLeft \"0\"}");
		newCopyButton.setStyle("toolBarSmall");
		newCopyButton.setPressedIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/copy/24\")%>");
		newCopyButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/copy/24\")%>");
		newCopyButton.setEnabler(getFileNameInvisibleTextField());
		newCopyButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/copy/16\")%>");
	}
	return newCopyButton;
}

/**
 * This method initializes deleteButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDeleteButton() {
	if (deleteButton == null) {
		deleteButton = new RButton();
		deleteButton.setName("deleteButton");
		deleteButton.setBorderPainted(false);
		deleteButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/deleteFiles\")%>");
		deleteButton.setStyle("toolBarSmall");
		deleteButton.setPressedIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/delete/24\")%>");
		deleteButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/delete/24\")%>");
		deleteButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}/insetsBottom \"0\"/insetsTop \"0\"/insetsRight \"0\"/fill \"HORIZONTAL\"/insetsLeft \"0\"}");
		deleteButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/delete/16\")%>");
		deleteButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/deleteFiles\")%>");
		deleteButton.setEnabler(getFileNameInvisibleTextField());
		//deleteButton.registerKeyboardAction(getActionForDeleteButton(), KeyStroke.getKeyStroke(KeyEvent.VK_DELETE,0), WHEN_IN_FOCUSED_WINDOW);
		
	}
	return deleteButton;
}

/**
 * This method initializes refreshSelectedFolderButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getRefreshSelectedFolderButton() {
	if (refreshSelectedFolderButton == null) {
		refreshSelectedFolderButton = new RButton();
		refreshSelectedFolderButton.setBorderPainted(false);
		refreshSelectedFolderButton.setName("refreshSelectedFolderButton");
		refreshSelectedFolderButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/refresh\")%>");
		refreshSelectedFolderButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/refresh\")%>");
		refreshSelectedFolderButton.setStyle("toolBarSmall");
		refreshSelectedFolderButton.setPressedIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/refresh/24\")%>");
		refreshSelectedFolderButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/refresh/24\")%>");
		refreshSelectedFolderButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}/insetsBottom \"0\"/insetsTop \"0\"/insetsRight \"0\"/fill \"HORIZONTAL\"/insetsLeft \"0\"}");
		refreshSelectedFolderButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/refresh/16\")%>");
	}
	return refreshSelectedFolderButton;
}

/**
 * This method initializes printButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getPrintButton() {
	if (printButton == null) {
		printButton = new RButton();
		printButton.setName("printButton");
		printButton.setBorderPainted(false);
		printButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/print\")%>");
		printButton.setStyle("toolBarBig");
		printButton.setStyleProperties("{/anchor \"CENTER\"/insetsTop \"0\"/fill \"NONE\"/insetsLeft \"0\"}");
		printButton.setEnabler(getFileNameInvisibleTextField());
		printButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/print/48\")%>");
	}
	return printButton;
}

/**
 * This method initializes makeNewDirButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getMakeNewDirButton() {
	if (makeNewDirButton == null) {
		makeNewDirButton = new RButton();
		makeNewDirButton.setName("makeNewDirButton");
		makeNewDirButton.setBorderPainted(false);
		makeNewDirButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/makeNewDir\")%>");
		makeNewDirButton.setStyleProperties("{/anchor \"CENTER\"/insetsTop \"0\"/fill \"NONE\"/insetsLeft \"0\"/weightX \"0\"}");
		makeNewDirButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/folder/48\")%>");
	}
	return makeNewDirButton;
}

/**
 * This method initializes treeGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getTreeGridBagLayoutPane() {
	if (treeGridBagLayoutPane == null) {
		treeGridBagLayoutPane = new RGridBagLayoutPane();
		treeGridBagLayoutPane.setName("treeGridBagLayoutPane");
		treeGridBagLayoutPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		treeGridBagLayoutPane.add(getButtonsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		treeGridBagLayoutPane.add(getTreeScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return treeGridBagLayoutPane;
}

/**
 * This method initializes deleteDirButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDeleteDirButton() {
	if (deleteDirButton == null) {
		deleteDirButton = new RButton();
		deleteDirButton.setName("deleteDirButton");
		deleteDirButton.setBorderPainted(false);
		deleteDirButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/deleteFolder\")%>");
		deleteDirButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/delete\")%>");
		deleteDirButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}/fill \"HORIZONTAL\"}");
		deleteDirButton.setPressedIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/delete/24\")%>");
		deleteDirButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/delete/24\")%>");
		deleteDirButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/delete/16\")%>");
	}
	return deleteDirButton;
}

/**
 * This method initializes GridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getGridBagLayoutPane() {
	if (GridBagLayoutPane == null) {
GridBagLayoutPane = new RGridBagLayoutPane();
		GridBagLayoutPane.setName("GridBagLayoutPane");
		GridBagLayoutPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
			GridBagLayoutPane.add(getFilesGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}

	return GridBagLayoutPane;
}


/**
 * This method initializes refreshDirsButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getRefreshDirsButton() {
	if (refreshDirsButton == null) {
		refreshDirsButton = new RButton();
		refreshDirsButton.setName("refreshDirsButton");
		refreshDirsButton.setBorderPainted(false);
		refreshDirsButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/refreshAll\")%>");
		refreshDirsButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/fill \"NONE\"}");
		refreshDirsButton.setPressedIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/refresh/24\")%>");
		refreshDirsButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/refresh/24\")%>");
		refreshDirsButton.setText(" ");
		refreshDirsButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/refresh/16\")%>");
	}
	return refreshDirsButton;
}

/**
 * This method initializes downloadAllFilesButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDownloadAllFilesButton() {
	if (downloadAllFilesButton == null) {
		downloadAllFilesButton = new RButton();
		downloadAllFilesButton.setBorderPainted(false);
		downloadAllFilesButton.setName("downloadAllFilesButton");
		downloadAllFilesButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/downloadContentOfFolder\")%>");
		downloadAllFilesButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/download\")%>");
		downloadAllFilesButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}/fill \"HORIZONTAL\"}");
		downloadAllFilesButton.setPressedIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/files/24\")%>");
		downloadAllFilesButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/files/24\")%>");
		downloadAllFilesButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/files/16\")%>");
	}
	return downloadAllFilesButton;
}

/**
 * This method initializes toogleFileListingButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getToogleFileListingButton() {
	if (toogleFileListingButton == null) {
		toogleFileListingButton = new RButton();
		toogleFileListingButton.setBorderPainted(false);
		toogleFileListingButton.setName("toogleFileListingButton");
		toogleFileListingButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/toogleFileListing\")%>");
		toogleFileListingButton.setStyleProperties("{/horizontalAlignment \"LEFT\"}");
		toogleFileListingButton.setPressedIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/fileSharing/24\")%>");
		toogleFileListingButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/fileSharing/24\")%>");
		toogleFileListingButton.setText(" ");
		toogleFileListingButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/fileSharing/16\")%>");
	}
	return toogleFileListingButton;
}

/**
 * This method initializes zipButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getZipButton() {
	if (zipButton == null) {
		zipButton = new RButton();
		zipButton.setName("zipButton");
		zipButton.setBorderPainted(false);
		zipButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/zipFiles\")%>");
		zipButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/zip\")%>");
		zipButton.setStyle("toolBarSmall");
		zipButton.setPressedIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/zipArchive/24\")%>");
		zipButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/zipArchive/24\")%>");
		zipButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}/insetsBottom \"0\"/insetsTop \"0\"/insetsRight \"0\"/fill \"HORIZONTAL\"/insetsLeft \"0\"}");
		zipButton.setEnabler(getFileNameInvisibleTextField());
		zipButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/zipArchive/16\")%>");
	}
	return zipButton;
}

/**
 * This method initializes zipMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getZipMenuItem() {
	if (zipMenuItem == null) {
		zipMenuItem = new RMenuItem();
		zipMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/zip\")%>");
		zipMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/zipArchive/16\")%>");
		zipMenuItem.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/zipFiles\")%>");
		zipMenuItem.setEnabler(getFileNameInvisibleTextField());
		zipMenuItem.setName("zipMenuItem");
	}
	return zipMenuItem;
}

/**
 * This method initializes pathChooserFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getPathChooserFlowLayoutPane() {
	if (pathChooserFlowLayoutPane == null) {
		pathChooserFlowLayoutPane = new RFlowLayoutPane();
		pathChooserFlowLayoutPane.setName("pathChooserFlowLayoutPane");
		pathChooserFlowLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"/alignment \"RIGHT\"}");
		pathChooserFlowLayoutPane.add(getOkButton());
		pathChooserFlowLayoutPane.add(getCancelButton());
	}
	return pathChooserFlowLayoutPane;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/ok/24\")%>");
		okButton.setName("okButton");
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
		cancelButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/cancel/24\")%>");
		cancelButton.setName("cancelButton");
		cancelButton.registerKeyboardAction(getCloseAction(), KeyStroke.getKeyStroke(KeyEvent.VK_W, KeyEvent.CTRL_DOWN_MASK), WHEN_IN_FOCUSED_WINDOW);
		cancelButton.registerKeyboardAction(getCloseAction(), KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), WHEN_IN_FOCUSED_WINDOW);
	}
	return cancelButton;
}
/**
 * This method initializes closeAction	 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getCloseAction(){
	if(closeAction==null){
		closeAction = new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doCloseAction();
			}
			
		};
	}
	return closeAction;
}
/**
 * used by the closeButton CTRL+ ... key Event to close the panel
 *
 */
private void doCloseAction(){
	try {
		this.getPanelAPI().callMethod("_close", new Object[0]);
	} catch (Exception ex) {
		Ivy.log().error(ex.getMessage(),ex);
	} 
}

/**
 * This method initializes fileToolbarPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFileToolbarPane() {
	if (fileToolbarPane == null) {
			RFiller Filler = new RFiller();
		Filler.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/preferredSizeWidth \"120\"}");
	fileToolbarPane = new RGridBagLayoutPane();
		fileToolbarPane.setName("fileToolbarPane");
		fileToolbarPane.setBorder(BorderFactory.createTitledBorder(null, "", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
			fileToolbarPane.setStyleProperties("{/anchor \"WEST\"/fill \"VERTICAL\"/weightX \"1\"}");
	fileToolbarPane.add(getUnlockButton(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			fileToolbarPane.add(getEditButton(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		fileToolbarPane.add(Filler, new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		fileToolbarPane.add(getRefreshSelectedFolderButton(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
}
	return fileToolbarPane;
}

/**
 * This method initializes fileToolbarPane2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFileToolbarPane2() {
	if (fileToolbarPane2 == null) {
		RFiller Filler1 = new RFiller();
		Filler1.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/preferredSizeWidth \"120\"}");
		fileToolbarPane2 = new RGridBagLayoutPane();
		fileToolbarPane2.setName("fileToolbarPane2");
		fileToolbarPane2.setBorder(BorderFactory.createTitledBorder(null, "", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
			fileToolbarPane2.setStyleProperties("{/anchor \"WEST\"/fill \"VERTICAL\"/weightX \"1\"}");
		fileToolbarPane2.add(getDeleteButton(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		fileToolbarPane2.add(Filler1, new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		fileToolbarPane2.add(getUploadButton(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		fileToolbarPane2.add(getDownloadButton(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return fileToolbarPane2;
}

/**
 * This method initializes fileToolbarPane3	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFileToolbarPane3() {
	if (fileToolbarPane3 == null) {
		RFiller Filler2 = new RFiller();
		Filler2.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/preferredSizeWidth \"120\"}");
		fileToolbarPane3 = new RGridBagLayoutPane();
		fileToolbarPane3.setName("fileToolbarPane3");
		fileToolbarPane3.setBorder(BorderFactory.createTitledBorder(null, "", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		fileToolbarPane3.setStyleProperties("{/anchor \"WEST\"/fill \"VERTICAL\"/weightY \"1\"/weightX \"1\"}");
		fileToolbarPane3.add(Filler2, new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		fileToolbarPane3.add(getPrintButton(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		fileToolbarPane3.add(getNewCopyButton(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		fileToolbarPane3.add(getZipButton(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return fileToolbarPane3;
}

/**
 * This method initializes filesGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFilesGridBagLayoutPane() {
	if (filesGridBagLayoutPane == null) {
		filesGridBagLayoutPane = new RGridBagLayoutPane();
		filesGridBagLayoutPane.setName("filesGridBagLayoutPane");
		filesGridBagLayoutPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		filesGridBagLayoutPane.add(getToolbarGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		filesGridBagLayoutPane.add(getFilesTableScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return filesGridBagLayoutPane;
}

/**
 * This method initializes toolbarGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getToolbarGridBagLayoutPane() {
	if (toolbarGridBagLayoutPane == null) {
		toolbarGridBagLayoutPane = new RGridBagLayoutPane();
		toolbarGridBagLayoutPane.setName("toolbarGridBagLayoutPane");
		toolbarGridBagLayoutPane.setStyleProperties("{/weightX \"0\"}");
		toolbarGridBagLayoutPane.add(getFileToolbarPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		toolbarGridBagLayoutPane.add(getFileToolbarPane3(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		toolbarGridBagLayoutPane.add(getFileToolbarPane2(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return toolbarGridBagLayoutPane;
}

/**
 * This method initializes uploadButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getUploadButton() {
	if (uploadButton == null) {
		uploadButton = new RButton();
		uploadButton.setName("uploadButton");
		//mailButton.setEventDeliveryMode(UlcEventCategories.ACTION_EVENT_CATEGORY, UlcEventConstants.ASYNCHRONOUS_MODE);
		uploadButton.setBorderPainted(false);
		uploadButton.setStyleProperties("{/fill \"BOTH\"}");
		uploadButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tooltips/upload\")%>");
		uploadButton.setStyle("toolBarBig");
		uploadButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/up/48\")%>");
	}
	return uploadButton;
}

/**
 * This method initializes statusLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getStatusLabel() {
	if (statusLabel == null) {
		statusLabel = new RLabel();
		statusLabel.setStyleProperties("{/horizontalAlignment \"LEFT\"/fill \"HORIZONTAL\"/weightX \"2\"}");
		statusLabel.setName("statusLabel");
	}
	return statusLabel;
}

/**
 * This method initializes buttonsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getButtonsGridBagLayoutPane() {
	if (buttonsGridBagLayoutPane == null) {
		buttonsGridBagLayoutPane = new RGridBagLayoutPane();
		buttonsGridBagLayoutPane.setName("buttonsGridBagLayoutPane");
		buttonsGridBagLayoutPane.setStyleProperties("{/anchor \"EAST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		buttonsGridBagLayoutPane.add(getButtonGroupGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return buttonsGridBagLayoutPane;
}

/**
 * This method initializes buttonGroupGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getButtonGroupGridBagLayoutPane() {
	if (buttonGroupGridBagLayoutPane == null) {
		RFiller Filler4 = new RFiller();
		Filler4.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		RFiller Filler3 = new RFiller();
		Filler3.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/preferredSizeWidth \"120\"/preferredSizeHeight \"0\"}");
		buttonGroupGridBagLayoutPane = new RGridBagLayoutPane();
		buttonGroupGridBagLayoutPane.setName("buttonGroupGridBagLayoutPane");
		buttonGroupGridBagLayoutPane.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		buttonGroupGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		buttonGroupGridBagLayoutPane.add(getMakeNewDirButton(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		buttonGroupGridBagLayoutPane.add(getDownloadAllFilesButton(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		buttonGroupGridBagLayoutPane.add(getDeleteDirButton(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		buttonGroupGridBagLayoutPane.add(getToogleFileListingButton(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		buttonGroupGridBagLayoutPane.add(getRefreshDirsButton(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		buttonGroupGridBagLayoutPane.add(Filler3, new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		buttonGroupGridBagLayoutPane.add(Filler4, new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return buttonGroupGridBagLayoutPane;
}

/**
 * This method initializes pasteMenuItemTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getPasteMenuItemTable() {
	if (pasteMenuItemTable == null) {
		pasteMenuItemTable = new RMenuItem();
		pasteMenuItemTable.setName("pasteMenuItemTable");
		pasteMenuItemTable.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/copy/16\")%>");
		pasteMenuItemTable.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/Paste\")%>");
	}
	return pasteMenuItemTable;
}


}  //  @jve:decl-index=0:visual-constraint="3,32"