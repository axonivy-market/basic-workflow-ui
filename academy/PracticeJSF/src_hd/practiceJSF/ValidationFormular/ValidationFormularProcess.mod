[Ivy]
1503D9BC69C32881 7.5.0 #module
>Proto >Proto Collection #zClass
Vs0 ValidationFormularProcess Big #zClass
Vs0 RD #cInfo
Vs0 #process
Vs0 @TextInP .type .type #zField
Vs0 @TextInP .processKind .processKind #zField
Vs0 @AnnotationInP-0n ai ai #zField
Vs0 @MessageFlowInP-0n messageIn messageIn #zField
Vs0 @MessageFlowOutP-0n messageOut messageOut #zField
Vs0 @TextInP .xml .xml #zField
Vs0 @TextInP .responsibility .responsibility #zField
Vs0 @UdInit f0 '' #zField
Vs0 @UdProcessEnd f1 '' #zField
Vs0 @UdEvent f3 '' #zField
Vs0 @UdExitEnd f4 '' #zField
Vs0 @PushWFArc f5 '' #zField
Vs0 @PushWFArc f2 '' #zField
>Proto Vs0 Vs0 ValidationFormularProcess #zField
Vs0 f0 guid 1503D9BC6C087614 #txt
Vs0 f0 method start(practiceJSF.ValidationFormData) #txt
Vs0 f0 inParameterDecl '<practiceJSF.ValidationFormData validationFormData> param;' #txt
Vs0 f0 inParameterMapAction 'out.validationFormData=param.validationFormData;
' #txt
Vs0 f0 outParameterDecl '<practiceJSF.ValidationFormData validationFormData> result;' #txt
Vs0 f0 outParameterMapAction 'result.validationFormData=in.validationFormData;
' #txt
Vs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ValidationFormData)</name>
        <nameStyle>25,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f0 83 51 26 26 -70 15 #rect
Vs0 f0 @|UdInitIcon #fIcon
Vs0 f1 211 51 26 26 0 12 #rect
Vs0 f1 @|UdProcessEndIcon #fIcon
Vs0 f3 guid 1503D9BC6CED2FFA #txt
Vs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Vs0 f3 83 147 26 26 -15 12 #rect
Vs0 f3 @|UdEventIcon #fIcon
Vs0 f4 211 147 26 26 0 12 #rect
Vs0 f4 @|UdExitEndIcon #fIcon
Vs0 f5 expr out #txt
Vs0 f5 109 160 211 160 #arcP
Vs0 f2 expr out #txt
Vs0 f2 109 64 211 64 #arcP
>Proto Vs0 .type practiceJSF.ValidationFormular.ValidationFormularData #txt
>Proto Vs0 .processKind HTML_DIALOG #txt
>Proto Vs0 -8 -8 16 16 16 26 #rect
>Proto Vs0 '' #fIcon
Vs0 f0 mainOut f2 tail #connect
Vs0 f2 head f1 mainIn #connect
Vs0 f3 mainOut f5 tail #connect
Vs0 f5 head f4 mainIn #connect
