[Ivy]
[>Created: Mon Oct 05 11:10:38 CEST 2015]
1504166483CDE498 3.17 #module
>Proto >Proto Collection #zClass
Ss0 ContactSensingLayoutFormProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialogEnd f4 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @GridStep f8 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @PushWFArc f6 '' #zField
>Proto Ss0 Ss0 ContactSensingLayoutFormProcess #zField
Ss0 f0 guid 1502860064D2FBDF #txt
Ss0 f0 type practiceJSF.ContactSensingLayoutForm.ContactSensingLayoutFormData #txt
Ss0 f0 method start(practiceJSF.ColorOrder) #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<practiceJSF.ColorOrder preSelection> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.colorOrder=param.preSelection;
out.colorOrder.color=null;
' #txt
Ss0 f0 outParameterDecl '<practiceJSF.ColorOrder colorOrder> result;
' #txt
Ss0 f0 outParameterMapAction 'result.colorOrder=in.colorOrder;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ColorOrder)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -46 15 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type practiceJSF.ContactSensingLayoutForm.ContactSensingLayoutFormData #txt
Ss0 f1 339 51 26 26 0 12 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 guid 1502860065898EAD #txt
Ss0 f3 type practiceJSF.ContactSensingLayoutForm.ContactSensingLayoutFormData #txt
Ss0 f3 actionDecl 'practiceJSF.ContactSensingLayoutForm.ContactSensingLayoutFormData out;
' #txt
Ss0 f3 actionTable 'out=out;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 83 147 26 26 -15 15 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f4 type practiceJSF.ContactSensingLayoutForm.ContactSensingLayoutFormData #txt
Ss0 f4 guid 15028600658C6A82 #txt
Ss0 f4 211 147 26 26 0 12 #rect
Ss0 f4 @|RichDialogEndIcon #fIcon
Ss0 f5 expr out #txt
Ss0 f5 109 160 211 160 #arcP
Ss0 f8 actionDecl 'practiceJSF.ContactSensingLayoutForm.ContactSensingLayoutFormData out;
' #txt
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 actionCode 'out.color.add("Red");
out.color.add("Green");
out.color.add("Blue");
out.color.add("Orange");
out.color.add("Yellow");
out.color.add("Pink");' #txt
Ss0 f8 type practiceJSF.ContactSensingLayoutForm.ContactSensingLayoutFormData #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Inscription</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 176 42 112 44 -28 -8 #rect
Ss0 f8 @|StepIcon #fIcon
Ss0 f2 expr out #txt
Ss0 f2 288 64 339 64 #arcP
Ss0 f6 expr out #txt
Ss0 f6 109 64 176 64 #arcP
Ss0 f6 0 0.4999999999999999 0 0 #arcLabel
>Proto Ss0 .type practiceJSF.ContactSensingLayoutForm.ContactSensingLayoutFormData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f3 mainOut f5 tail #connect
Ss0 f5 head f4 mainIn #connect
Ss0 f8 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f0 mainOut f6 tail #connect
Ss0 f6 head f8 mainIn #connect