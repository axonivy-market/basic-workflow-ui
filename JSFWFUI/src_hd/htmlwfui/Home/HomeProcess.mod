[Ivy]
[>Created: Thu Oct 25 19:21:54 CEST 2012]
13A97F3A59B5F078 3.17 #module
>Proto >Proto Collection #zClass
Hs0 HomeProcess Big #zClass
Hs0 RD #cInfo
Hs0 #process
Hs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Hs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Hs0 @TextInP .resExport .resExport #zField
Hs0 @TextInP .type .type #zField
Hs0 @TextInP .processKind .processKind #zField
Hs0 @AnnotationInP-0n ai ai #zField
Hs0 @TextInP .xml .xml #zField
Hs0 @TextInP .responsibility .responsibility #zField
Hs0 @RichDialogInitStart f0 '' #zField
Hs0 @RichDialogProcessEnd f1 '' #zField
Hs0 @RichDialogProcessStep f3 '' #zField
Hs0 @PushWFArc f4 '' #zField
Hs0 @PushWFArc f2 '' #zField
>Proto Hs0 Hs0 HomeProcess #zField
Hs0 f0 guid 13A97F3A5CAC7041 #txt
Hs0 f0 type htmlwfui.Home.HomeData #txt
Hs0 f0 method start() #txt
Hs0 f0 disableUIEvents true #txt
Hs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Hs0 f0 outParameterDecl '<> result;
' #txt
Hs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Hs0 f0 86 54 20 20 13 0 #rect
Hs0 f0 @|RichDialogInitStartIcon #fIcon
Hs0 f1 type htmlwfui.Home.HomeData #txt
Hs0 f1 86 150 20 20 13 0 #rect
Hs0 f1 @|RichDialogProcessEndIcon #fIcon
Hs0 f3 actionDecl 'htmlwfui.Home.HomeData out;
' #txt
Hs0 f3 actionTable 'out=in;
' #txt
Hs0 f3 actionCode 'import ivy.htmlwfui.ScheduleBean;
out.themes = ["sunny","midnight","dark-hive", "smoothness", "afterdark", "cruze", "eggplant"]; 

out.scheduleBean = new ScheduleBean();' #txt
Hs0 f3 type htmlwfui.Home.HomeData #txt
Hs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f3 78 92 36 24 26 -3 #rect
Hs0 f3 @|RichDialogProcessStepIcon #fIcon
Hs0 f4 expr out #txt
Hs0 f4 96 74 96 92 #arcP
Hs0 f2 expr out #txt
Hs0 f2 96 116 96 150 #arcP
>Proto Hs0 .type htmlwfui.Home.HomeData #txt
>Proto Hs0 .processKind RICH_DIALOG #txt
>Proto Hs0 -8 -8 16 16 16 26 #rect
>Proto Hs0 '' #fIcon
Hs0 f0 mainOut f4 tail #connect
Hs0 f4 head f3 mainIn #connect
Hs0 f3 mainOut f2 tail #connect
Hs0 f2 head f1 mainIn #connect
