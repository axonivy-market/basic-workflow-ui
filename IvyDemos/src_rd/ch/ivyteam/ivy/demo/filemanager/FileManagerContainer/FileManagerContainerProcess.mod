[Ivy]
[>Created: Mon Jun 11 21:09:23 EDT 2012]
13581CDACF4D326A 3.17 #module
>Proto >Proto Collection #zClass
Fs0 FileManagerContainerProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @RichDialogInitStart f3 '' #zField
Fs0 @RichDialogProcessEnd f4 '' #zField
Fs0 @PushWFArc f5 '' #zField
>Proto Fs0 Fs0 FileManagerContainerProcess #zField
Fs0 f0 guid 13581CDAD053D840 #txt
Fs0 f0 type ch.ivyteam.ivy.demo.filemanager.FileManagerContainer.FileManagerContainerData #txt
Fs0 f0 method start() #txt
Fs0 f0 disableUIEvents true #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 embeddedRdInitializations '{/fileManagerPanel {/fieldName "fileManagerPanel"/startMethod "start(ch.ivyteam.ivy.addons.filemanager.configuration.FileManagerConfigurationController)"/parameterMapping "param.filemanagerConfiguration.rootPath=\"root/test\";\n"/initScript ""/userContext * }}' #txt
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f0 90 40 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f1 type ch.ivyteam.ivy.demo.filemanager.FileManagerContainer.FileManagerContainerData #txt
Fs0 f1 90 140 20 20 13 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f2 expr out #txt
Fs0 f2 100 60 100 140 #arcP
Fs0 f3 guid 137DE3BE07E30212 #txt
Fs0 f3 type ch.ivyteam.ivy.demo.filemanager.FileManagerContainer.FileManagerContainerData #txt
Fs0 f3 method start(ch.ivyteam.ivy.addons.filemanager.configuration.FileManagerConfigurationController) #txt
Fs0 f3 disableUIEvents true #txt
Fs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.addons.filemanager.configuration.FileManagerConfigurationController configurationController> param = methodEvent.getInputArguments();
' #txt
Fs0 f3 outParameterDecl '<> result;
' #txt
Fs0 f3 embeddedRdInitializations '{/fileManagerPanel {/fieldName "fileManagerPanel"/startMethod "start(ch.ivyteam.ivy.addons.filemanager.configuration.FileManagerConfigurationController)"/parameterMapping "param.filemanagerConfiguration=callParam.configurationController;\n"/initScript ""/userContext * }}' #txt
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(FileManagerConfigurationController)</name>
        <nameStyle>41,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 206 46 20 20 13 0 #rect
Fs0 f3 @|RichDialogInitStartIcon #fIcon
Fs0 f4 type ch.ivyteam.ivy.demo.filemanager.FileManagerContainer.FileManagerContainerData #txt
Fs0 f4 206 134 20 20 13 0 #rect
Fs0 f4 @|RichDialogProcessEndIcon #fIcon
Fs0 f5 expr out #txt
Fs0 f5 216 66 216 134 #arcP
>Proto Fs0 .type ch.ivyteam.ivy.demo.filemanager.FileManagerContainer.FileManagerContainerData #txt
>Proto Fs0 .processKind RICH_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f3 mainOut f5 tail #connect
Fs0 f5 head f4 mainIn #connect
