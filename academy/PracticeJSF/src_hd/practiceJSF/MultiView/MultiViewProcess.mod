[Ivy]
1504285BFBB58B9A 7.5.0 #module
>Proto >Proto Collection #zClass
Ms0 MultiViewProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @MessageFlowInP-0n messageIn messageIn #zField
Ms0 @MessageFlowOutP-0n messageOut messageOut #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @UdInit f0 '' #zField
Ms0 @UdProcessEnd f1 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @UdEvent f3 '' #zField
Ms0 @UdExitEnd f4 '' #zField
Ms0 @PushWFArc f5 '' #zField
>Proto Ms0 Ms0 MultiViewProcess #zField
Ms0 f0 guid 1504285BFD34A3D5 #txt
Ms0 f0 method start(practiceJSF.MultiViewDialogData) #txt
Ms0 f0 inParameterDecl '<practiceJSF.MultiViewDialogData multiViewDialogData> param;' #txt
Ms0 f0 inParameterMapAction 'out.multiViewDialogData=param.multiViewDialogData;
' #txt
Ms0 f0 outParameterDecl '<practiceJSF.MultiViewDialogData multiViewDialogData> result;' #txt
Ms0 f0 outParameterMapAction 'result.multiViewDialogData=in.multiViewDialogData;
' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(MultiViewDialogData)</name>
    </language>
</elementInfo>
' #txt
Ms0 f0 83 51 26 26 -72 15 #rect
Ms0 f0 @|UdInitIcon #fIcon
Ms0 f1 211 51 26 26 0 12 #rect
Ms0 f1 @|UdProcessEndIcon #fIcon
Ms0 f2 expr out #txt
Ms0 f2 109 64 211 64 #arcP
Ms0 f3 guid 1504285BFDF221E3 #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ms0 f3 83 147 26 26 -15 12 #rect
Ms0 f3 @|UdEventIcon #fIcon
Ms0 f4 211 147 26 26 0 12 #rect
Ms0 f4 @|UdExitEndIcon #fIcon
Ms0 f5 expr out #txt
Ms0 f5 109 160 211 160 #arcP
>Proto Ms0 .type practiceJSF.MultiView.MultiViewData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f3 mainOut f5 tail #connect
Ms0 f5 head f4 mainIn #connect
