[Ivy]
[>Created: Fri Jan 10 08:37:24 CET 2014]
14377E60D299F34F 3.17 #module
>Proto >Proto Collection #zClass
Es0 JsfCompositeComponentDemoProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Es0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Es0 @TextInP .resExport .resExport #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @AnnotationInP-0n ai ai #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @RichDialogInitStart f0 '' #zField
Es0 @RichDialogProcessEnd f1 '' #zField
Es0 @PushWFArc f2 '' #zField
>Proto Es0 Es0 JsfCompositeComponentDemoProcess #zField
Es0 f0 guid 139D96A574FD8C6C #txt
Es0 f0 type ch.ivyteam.htmldialog.demo.component.JsfCompositeComponentDemo.JsfCompositeComponentDemoData #txt
Es0 f0 method start() #txt
Es0 f0 disableUIEvents true #txt
Es0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Es0 f0 inParameterMapAction 'out.person.billingAddress.country="Switzerland";
out.person.billingAddress.street="Bahnhofstrasse";
out.person.deliveryAddress.country="Germany";
out.person.deliveryAddress.street="Landstrasse";
out.person.firstname="Hans";
out.person.name="Muster";
' #txt
Es0 f0 outParameterDecl '<> result;
' #txt
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f0 54 54 20 20 13 0 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 type ch.ivyteam.htmldialog.demo.component.JsfCompositeComponentDemo.JsfCompositeComponentDemoData #txt
Es0 f1 54 150 20 20 13 0 #rect
Es0 f1 @|RichDialogProcessEndIcon #fIcon
Es0 f2 expr out #txt
Es0 f2 64 74 64 150 #arcP
>Proto Es0 .type ch.ivyteam.htmldialog.demo.component.JsfCompositeComponentDemo.JsfCompositeComponentDemoData #txt
>Proto Es0 .processKind HTML_DIALOG #txt
>Proto Es0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
</elementInfo>
' #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f0 mainOut f2 tail #connect
Es0 f2 head f1 mainIn #connect
