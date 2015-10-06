[Ivy]
[>Created: Tue Oct 06 14:03:46 CEST 2015]
15037E64D6B19F81 3.17 #module
>Proto >Proto Collection #zClass
Us0 UIEventHandlingProcess Big #zClass
Us0 RD #cInfo
Us0 #process
Us0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Us0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Us0 @TextInP .resExport .resExport #zField
Us0 @TextInP .type .type #zField
Us0 @TextInP .processKind .processKind #zField
Us0 @AnnotationInP-0n ai ai #zField
Us0 @MessageFlowInP-0n messageIn messageIn #zField
Us0 @MessageFlowOutP-0n messageOut messageOut #zField
Us0 @TextInP .xml .xml #zField
Us0 @TextInP .responsibility .responsibility #zField
Us0 @RichDialogInitStart f0 '' #zField
Us0 @RichDialogProcessEnd f1 '' #zField
Us0 @RichDialogProcessStart f3 '' #zField
Us0 @RichDialogEnd f4 '' #zField
Us0 @PushWFArc f5 '' #zField
Us0 @GridStep f6 '' #zField
Us0 @PushWFArc f7 '' #zField
Us0 @PushWFArc f2 '' #zField
Us0 @RichDialogProcessEnd f9 '' #zField
Us0 @GridStep f11 '' #zField
Us0 @PushWFArc f10 '' #zField
Us0 @RichDialogProcessStart f15 '' #zField
Us0 @RichDialogProcessEnd f16 '' #zField
Us0 @GridStep f18 '' #zField
Us0 @PushWFArc f17 '' #zField
Us0 @Alternative f19 '' #zField
Us0 @PushWFArc f21 '' #zField
Us0 @GridStep f22 '' #zField
Us0 @PushWFArc f23 '' #zField
Us0 @RichDialogProcessEnd f24 '' #zField
Us0 @PushWFArc f25 '' #zField
Us0 @GridStep f26 '' #zField
Us0 @PushWFArc f27 '' #zField
Us0 @PushWFArc f20 '' #zField
Us0 @RichDialogProcessStart f28 '' #zField
Us0 @PushWFArc f8 '' #zField
>Proto Us0 Us0 UIEventHandlingProcess #zField
Us0 f0 guid 15037E64D87E95C3 #txt
Us0 f0 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f0 method start(practiceJSF.EventListenerData) #txt
Us0 f0 disableUIEvents true #txt
Us0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<practiceJSF.EventListenerData eventListenerData> param = methodEvent.getInputArguments();
' #txt
Us0 f0 inParameterMapAction 'out.eventListenerData=param.eventListenerData;
' #txt
Us0 f0 outParameterDecl '<practiceJSF.EventListenerData eventListenerData> result;
' #txt
Us0 f0 outParameterMapAction 'result.eventListenerData=in.eventListenerData;
' #txt
Us0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(EventListenerData)</name>
    </language>
</elementInfo>
' #txt
Us0 f0 83 51 26 26 -66 15 #rect
Us0 f0 @|RichDialogInitStartIcon #fIcon
Us0 f1 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f1 339 51 26 26 0 12 #rect
Us0 f1 @|RichDialogProcessEndIcon #fIcon
Us0 f3 guid 15037E64D90B9B58 #txt
Us0 f3 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f3 actionDecl 'practiceJSF.UIEventHandling.UIEventHandlingData out;
' #txt
Us0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Us0 f3 83 147 26 26 -15 12 #rect
Us0 f3 @|RichDialogProcessStartIcon #fIcon
Us0 f4 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f4 guid 15037E64D90EC440 #txt
Us0 f4 211 147 26 26 0 12 #rect
Us0 f4 @|RichDialogEndIcon #fIcon
Us0 f5 expr out #txt
Us0 f5 109 160 211 160 #arcP
Us0 f6 actionDecl 'practiceJSF.UIEventHandling.UIEventHandlingData out;
' #txt
Us0 f6 actionTable 'out=in;
' #txt
Us0 f6 actionCode 'out.gender.add("Girl");
out.gender.add("Boy");


' #txt
Us0 f6 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Insription</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f6 168 42 112 44 -25 -8 #rect
Us0 f6 @|StepIcon #fIcon
Us0 f7 expr out #txt
Us0 f7 109 64 168 64 #arcP
Us0 f2 expr out #txt
Us0 f2 280 64 339 64 #arcP
Us0 f9 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f9 339 243 26 26 0 12 #rect
Us0 f9 @|RichDialogProcessEndIcon #fIcon
Us0 f11 actionDecl 'practiceJSF.UIEventHandling.UIEventHandlingData out;
' #txt
Us0 f11 actionTable 'out=in;
' #txt
Us0 f11 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

FacesContext.getCurrentInstance().addMessage(null,new FacesMessage(FacesMessage.SEVERITY_INFO, "Submit pressed!", "Data: "+in.eventListenerData.customMessage+" "+in.eventListenerData.gender+" "+in.eventListenerData.name));' #txt
Us0 f11 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Message Creation</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f11 168 234 112 44 -50 -8 #rect
Us0 f11 @|StepIcon #fIcon
Us0 f10 expr out #txt
Us0 f10 280 256 339 256 #arcP
Us0 f15 guid 150382F63A17989C #txt
Us0 f15 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f15 actionDecl 'practiceJSF.UIEventHandling.UIEventHandlingData out;
' #txt
Us0 f15 actionTable 'out=in;
' #txt
Us0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>nameChange</name>
    </language>
</elementInfo>
' #txt
Us0 f15 83 371 26 26 -38 12 #rect
Us0 f15 @|RichDialogProcessStartIcon #fIcon
Us0 f16 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f16 595 339 26 26 0 12 #rect
Us0 f16 @|RichDialogProcessEndIcon #fIcon
Us0 f18 actionDecl 'practiceJSF.UIEventHandling.UIEventHandlingData out;
' #txt
Us0 f18 actionTable 'out=in;
out.eventListenerData.gender="Girl";
' #txt
Us0 f18 actionCode 'out.name.add("Barbara");
out.name.add("Caty");
out.name.add("Salome");
out.name.add("Andrina");
out.name.add("Carla");
out.name.add("Neva");
out.name.add("Tanja");
out.name.add("Julia");
out.name.add("Stephanie");
out.name.add("July");' #txt
Us0 f18 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Fill Girls</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f18 424 330 112 44 -22 -8 #rect
Us0 f18 @|StepIcon #fIcon
Us0 f17 expr out #txt
Us0 f17 536 352 595 352 #arcP
Us0 f19 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f19 336 368 32 32 0 16 #rect
Us0 f19 @|AlternativeIcon #fIcon
Us0 f21 expr in #txt
Us0 f21 outCond 'in.eventListenerData.gender == "Girl"' #txt
Us0 f21 365 381 424 352 #arcP
Us0 f22 actionDecl 'practiceJSF.UIEventHandling.UIEventHandlingData out;
' #txt
Us0 f22 actionTable 'out=in;
out.eventListenerData.gender="Boy";
' #txt
Us0 f22 actionCode 'out.name.add("Bruno");
out.name.add("Peter");
out.name.add("Reguel");
out.name.add("Christian");
out.name.add("Dominik");
out.name.add("Michael");
out.name.add("Flavio");
out.name.add("Reto");
out.name.add("Tamas");
out.name.add("Denis");

' #txt
Us0 f22 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Fill Boys</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f22 424 394 112 44 -23 -8 #rect
Us0 f22 @|StepIcon #fIcon
Us0 f23 expr in #txt
Us0 f23 outCond in.eventListenerData.gender=="Boy" #txt
Us0 f23 365 387 424 416 #arcP
Us0 f24 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f24 595 403 26 26 0 12 #rect
Us0 f24 @|RichDialogProcessEndIcon #fIcon
Us0 f25 expr out #txt
Us0 f25 536 416 595 416 #arcP
Us0 f26 actionDecl 'practiceJSF.UIEventHandling.UIEventHandlingData out;
' #txt
Us0 f26 actionTable 'out=in;
' #txt
Us0 f26 actionCode 'out.name = [];' #txt
Us0 f26 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Clear Names</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f26 168 362 112 44 -37 -8 #rect
Us0 f26 @|StepIcon #fIcon
Us0 f27 expr out #txt
Us0 f27 109 384 168 384 #arcP
Us0 f20 expr out #txt
Us0 f20 280 384 336 384 #arcP
Us0 f28 guid 1503D00676328D96 #txt
Us0 f28 type practiceJSF.UIEventHandling.UIEventHandlingData #txt
Us0 f28 actionDecl 'practiceJSF.UIEventHandling.UIEventHandlingData out;
' #txt
Us0 f28 actionTable 'out=in;
' #txt
Us0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>submit</name>
    </language>
</elementInfo>
' #txt
Us0 f28 83 243 26 26 -19 12 #rect
Us0 f28 @|RichDialogProcessStartIcon #fIcon
Us0 f8 expr out #txt
Us0 f8 109 256 168 256 #arcP
>Proto Us0 .type practiceJSF.UIEventHandling.UIEventHandlingData #txt
>Proto Us0 .processKind HTML_DIALOG #txt
>Proto Us0 -8 -8 16 16 16 26 #rect
>Proto Us0 '' #fIcon
Us0 f3 mainOut f5 tail #connect
Us0 f5 head f4 mainIn #connect
Us0 f0 mainOut f7 tail #connect
Us0 f7 head f6 mainIn #connect
Us0 f6 mainOut f2 tail #connect
Us0 f2 head f1 mainIn #connect
Us0 f11 mainOut f10 tail #connect
Us0 f10 head f9 mainIn #connect
Us0 f18 mainOut f17 tail #connect
Us0 f17 head f16 mainIn #connect
Us0 f19 out f21 tail #connect
Us0 f21 head f18 mainIn #connect
Us0 f19 out f23 tail #connect
Us0 f23 head f22 mainIn #connect
Us0 f22 mainOut f25 tail #connect
Us0 f25 head f24 mainIn #connect
Us0 f15 mainOut f27 tail #connect
Us0 f27 head f26 mainIn #connect
Us0 f26 mainOut f20 tail #connect
Us0 f20 head f19 in #connect
Us0 f28 mainOut f8 tail #connect
Us0 f8 head f11 mainIn #connect
