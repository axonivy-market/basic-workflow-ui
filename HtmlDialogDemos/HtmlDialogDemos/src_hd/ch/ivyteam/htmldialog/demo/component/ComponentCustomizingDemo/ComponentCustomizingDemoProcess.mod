[Ivy]
[>Created: Tue May 06 12:12:28 CEST 2014]
13C628B65065323C 3.17 #module
>Proto >Proto Collection #zClass
Cs0 ComponentCustomizingDemoProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessStart f3 '' #zField
Cs0 @RichDialogProcessEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
>Proto Cs0 Cs0 ComponentCustomizingDemoProcess #zField
Cs0 f0 guid 13C628B652FD5462 #txt
Cs0 f0 type ch.ivyteam.htmldialog.demo.component.ComponentCustomizingDemo.ComponentCustomizingDemoData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -16 12 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f0 -1|-1|-9671572 #nodeStyle
Cs0 f1 type ch.ivyteam.htmldialog.demo.component.ComponentCustomizingDemo.ComponentCustomizingDemoData #txt
Cs0 f1 211 51 26 26 0 12 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f1 -1|-1|-9671572 #nodeStyle
Cs0 f2 expr out #txt
Cs0 f2 109 64 211 64 #arcP
Cs0 f3 guid 13C62A24F9EDA5DC #txt
Cs0 f3 type ch.ivyteam.htmldialog.demo.component.ComponentCustomizingDemo.ComponentCustomizingDemoData #txt
Cs0 f3 actionDecl 'ch.ivyteam.htmldialog.demo.component.ComponentCustomizingDemo.ComponentCustomizingDemoData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>submit</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 83 147 26 26 -19 12 #rect
Cs0 f3 @|RichDialogProcessStartIcon #fIcon
Cs0 f3 -1|-1|-9671572 #nodeStyle
Cs0 f4 type ch.ivyteam.htmldialog.demo.component.ComponentCustomizingDemo.ComponentCustomizingDemoData #txt
Cs0 f4 211 147 26 26 0 12 #rect
Cs0 f4 @|RichDialogProcessEndIcon #fIcon
Cs0 f4 -1|-1|-9671572 #nodeStyle
Cs0 f5 109 160 211 160 #arcP
>Proto Cs0 .type ch.ivyteam.htmldialog.demo.component.ComponentCustomizingDemo.ComponentCustomizingDemoData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect