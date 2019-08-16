[Ivy]
1501D90B90D23422 3.28 #module
>Proto >Proto Collection #zClass
Ks0 ContactSensingProcess Big #zClass
Ks0 RD #cInfo
Ks0 #process
Ks0 @TextInP .type .type #zField
Ks0 @TextInP .processKind .processKind #zField
Ks0 @AnnotationInP-0n ai ai #zField
Ks0 @MessageFlowInP-0n messageIn messageIn #zField
Ks0 @MessageFlowOutP-0n messageOut messageOut #zField
Ks0 @TextInP .xml .xml #zField
Ks0 @TextInP .responsibility .responsibility #zField
Ks0 @UdInit f0 '' #zField
Ks0 @UdProcessEnd f1 '' #zField
Ks0 @PushWFArc f2 '' #zField
Ks0 @UdEvent f3 '' #zField
Ks0 @UdExitEnd f4 '' #zField
Ks0 @PushWFArc f5 '' #zField
>Proto Ks0 Ks0 ContactSensingProcess #zField
Ks0 f0 guid 1501D90B9419EA34 #txt
Ks0 f0 method start(practiceJSF.Contact,practiceJSF.Company) #txt
Ks0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<practiceJSF.Contact contact,practiceJSF.Company company> param = methodEvent.getInputArguments();
' #txt
Ks0 f0 inParameterMapAction 'out.company=param.company;
out.contact=param.contact;
' #txt
Ks0 f0 outParameterDecl '<practiceJSF.Contact contact,practiceJSF.Company company> result;
' #txt
Ks0 f0 outParameterMapAction 'result.contact=in.contact;
result.company=in.company;
' #txt
Ks0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Contact)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ks0 f0 83 51 26 26 -37 15 #rect
Ks0 f0 @|UdInitIcon #fIcon
Ks0 f1 211 51 26 26 0 12 #rect
Ks0 f1 @|UdProcessEndIcon #fIcon
Ks0 f2 expr out #txt
Ks0 f2 109 64 211 64 #arcP
Ks0 f3 guid 1501D90B94E24B42 #txt
Ks0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ks0 f3 83 147 26 26 -15 15 #rect
Ks0 f3 @|UdEventIcon #fIcon
Ks0 f4 211 147 26 26 0 12 #rect
Ks0 f4 @|UdExitEndIcon #fIcon
Ks0 f5 expr out #txt
Ks0 f5 109 160 211 160 #arcP
>Proto Ks0 .type practiceJSF.ContactSensing.ContactSensingData #txt
>Proto Ks0 .processKind HTML_DIALOG #txt
>Proto Ks0 -8 -8 16 16 16 26 #rect
>Proto Ks0 '' #fIcon
Ks0 f0 mainOut f2 tail #connect
Ks0 f2 head f1 mainIn #connect
Ks0 f3 mainOut f5 tail #connect
Ks0 f5 head f4 mainIn #connect
