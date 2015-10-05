[Ivy]
[>Created: Thu Oct 01 10:43:49 CEST 2015]
150226D90C82DCCB 3.17 #module
>Proto >Proto Collection #zClass
Ds0 DatenAusgebenProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogEnd f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @GridStep f6 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @PushWFArc f2 '' #zField
>Proto Ds0 Ds0 DatenAusgebenProcess #zField
Ds0 f0 guid 150226D90FA53294 #txt
Ds0 f0 type schulungJSF.DatenAusgeben.DatenAusgebenData #txt
Ds0 f0 method start() #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -16 15 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type schulungJSF.DatenAusgeben.DatenAusgebenData #txt
Ds0 f1 371 51 26 26 0 12 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f3 guid 150226D91044ECC1 #txt
Ds0 f3 type schulungJSF.DatenAusgeben.DatenAusgebenData #txt
Ds0 f3 actionDecl 'schulungJSF.DatenAusgeben.DatenAusgebenData out;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 147 26 26 -15 12 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f4 type schulungJSF.DatenAusgeben.DatenAusgebenData #txt
Ds0 f4 guid 150226D9104D00FF #txt
Ds0 f4 211 147 26 26 0 12 #rect
Ds0 f4 @|RichDialogEndIcon #fIcon
Ds0 f5 expr out #txt
Ds0 f5 109 160 211 160 #arcP
Ds0 f6 actionDecl 'schulungJSF.DatenAusgeben.DatenAusgebenData out;
' #txt
Ds0 f6 actionTable 'out=in;
out.bold="this is a bold text";
out.currentDate=new Date();
out.currentDateTime=new DateTime();
out.message="Hello World";
out.moneyAmount=354953.50;
' #txt
Ds0 f6 type schulungJSF.DatenAusgeben.DatenAusgebenData #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Daten initialisieren</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 176 42 112 44 -51 -8 #rect
Ds0 f6 @|StepIcon #fIcon
Ds0 f7 expr out #txt
Ds0 f7 109 64 176 64 #arcP
Ds0 f2 expr out #txt
Ds0 f2 288 64 371 64 #arcP
>Proto Ds0 .type schulungJSF.DatenAusgeben.DatenAusgebenData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f0 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f6 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
