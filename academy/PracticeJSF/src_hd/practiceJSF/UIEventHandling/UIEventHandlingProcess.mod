[Ivy]
15037E64D6B19F81 3.28 #module
>Proto >Proto Collection #zClass
Us0 UIEventHandlingProcess Big #zClass
Us0 RD #cInfo
Us0 #process
Us0 @TextInP .type .type #zField
Us0 @TextInP .processKind .processKind #zField
Us0 @AnnotationInP-0n ai ai #zField
Us0 @MessageFlowInP-0n messageIn messageIn #zField
Us0 @MessageFlowOutP-0n messageOut messageOut #zField
Us0 @TextInP .xml .xml #zField
Us0 @TextInP .responsibility .responsibility #zField
Us0 @UdInit f0 '' #zField
Us0 @UdProcessEnd f1 '' #zField
Us0 @UdEvent f3 '' #zField
Us0 @UdExitEnd f4 '' #zField
Us0 @PushWFArc f5 '' #zField
Us0 @GridStep f6 '' #zField
Us0 @PushWFArc f7 '' #zField
Us0 @PushWFArc f2 '' #zField
Us0 @UdProcessEnd f9 '' #zField
Us0 @GridStep f11 '' #zField
Us0 @PushWFArc f10 '' #zField
Us0 @UdEvent f15 '' #zField
Us0 @GridStep f18 '' #zField
Us0 @Alternative f19 '' #zField
Us0 @GridStep f22 '' #zField
Us0 @PushWFArc f23 '' #zField
Us0 @UdProcessEnd f24 '' #zField
Us0 @PushWFArc f25 '' #zField
Us0 @GridStep f26 '' #zField
Us0 @PushWFArc f27 '' #zField
Us0 @PushWFArc f20 '' #zField
Us0 @UdEvent f28 '' #zField
Us0 @PushWFArc f8 '' #zField
Us0 @GridStep f12 '' #zField
Us0 @PushWFArc f13 '' #zField
Us0 @PushWFArc f14 '' #zField
Us0 @PushWFArc f16 '' #zField
Us0 @PushWFArc f21 '' #zField
>Proto Us0 Us0 UIEventHandlingProcess #zField
Us0 f0 guid 15037E64D87E95C3 #txt
Us0 f0 method start(practiceJSF.EventListenerData) #txt
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
Us0 f0 @|UdInitIcon #fIcon
Us0 f1 339 51 26 26 0 12 #rect
Us0 f1 @|UdProcessEndIcon #fIcon
Us0 f3 guid 15037E64D90B9B58 #txt
Us0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Us0 f3 83 147 26 26 -15 12 #rect
Us0 f3 @|UdEventIcon #fIcon
Us0 f4 211 147 26 26 0 12 #rect
Us0 f4 @|UdExitEndIcon #fIcon
Us0 f5 expr out #txt
Us0 f5 109 160 211 160 #arcP
Us0 f6 actionTable 'out=in;
' #txt
Us0 f6 actionCode 'out.gender.add("Girl");
out.gender.add("Boy");


' #txt
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
Us0 f9 339 243 26 26 0 12 #rect
Us0 f9 @|UdProcessEndIcon #fIcon
Us0 f11 actionTable 'out=in;
' #txt
Us0 f11 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

FacesContext.getCurrentInstance().addMessage(null,new FacesMessage(FacesMessage.SEVERITY_INFO, "Submit pressed!", "Data: "+in.eventListenerData.customMessage+" "+in.eventListenerData.gender+" "+in.eventListenerData.name));' #txt
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
Us0 f15 actionTable 'out=in;
' #txt
Us0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>nameChange</name>
    </language>
</elementInfo>
' #txt
Us0 f15 83 419 26 26 -38 12 #rect
Us0 f15 @|UdEventIcon #fIcon
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
Us0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Fill Girls</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f18 424 346 112 44 -22 -8 #rect
Us0 f18 @|StepIcon #fIcon
Us0 f19 336 416 32 32 0 16 #rect
Us0 f19 @|AlternativeIcon #fIcon
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
Us0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Fill Boys</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f22 424 410 112 44 -23 -8 #rect
Us0 f22 @|StepIcon #fIcon
Us0 f23 expr in #txt
Us0 f23 outCond in.eventListenerData.gender=="Boy" #txt
Us0 f23 368 432 424 432 #arcP
Us0 f24 595 419 26 26 0 12 #rect
Us0 f24 @|UdProcessEndIcon #fIcon
Us0 f25 expr out #txt
Us0 f25 536 432 595 432 #arcP
Us0 f26 actionTable 'out=in;
' #txt
Us0 f26 actionCode 'out.name = [];' #txt
Us0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Clear Names</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f26 168 410 112 44 -37 -8 #rect
Us0 f26 @|StepIcon #fIcon
Us0 f27 expr out #txt
Us0 f27 109 432 168 432 #arcP
Us0 f20 expr out #txt
Us0 f20 280 432 336 432 #arcP
Us0 f28 guid 1503D00676328D96 #txt
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
Us0 f28 @|UdEventIcon #fIcon
Us0 f8 expr out #txt
Us0 f8 109 256 168 256 #arcP
Us0 f12 actionTable 'out=in;
' #txt
Us0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No filling</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f12 424 474 112 44 -24 -8 #rect
Us0 f12 @|StepIcon #fIcon
Us0 f13 expr in #txt
Us0 f13 363 437 436 474 #arcP
Us0 f14 expr out #txt
Us0 f14 524 390 596 426 #arcP
Us0 f16 expr out #txt
Us0 f16 524 474 596 437 #arcP
Us0 f21 expr in #txt
Us0 f21 outCond 'in.eventListenerData.gender == "Girl"' #txt
Us0 f21 363 427 436 390 #arcP
Us0 f21 0 1.0 0 0 #arcLabel
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
Us0 f23 head f22 mainIn #connect
Us0 f22 mainOut f25 tail #connect
Us0 f25 head f24 mainIn #connect
Us0 f15 mainOut f27 tail #connect
Us0 f27 head f26 mainIn #connect
Us0 f26 mainOut f20 tail #connect
Us0 f20 head f19 in #connect
Us0 f28 mainOut f8 tail #connect
Us0 f8 head f11 mainIn #connect
Us0 f13 head f12 mainIn #connect
Us0 f18 mainOut f14 tail #connect
Us0 f14 head f24 mainIn #connect
Us0 f12 mainOut f16 tail #connect
Us0 f16 head f24 mainIn #connect
Us0 f19 out f21 tail #connect
Us0 f21 head f18 mainIn #connect
Us0 f19 out f23 tail #connect
Us0 f19 out f13 tail #connect
