[Ivy]
[>Created: Mon Oct 05 16:36:08 CEST 2015]
15037D0942CC5A94 3.17 #module
>Proto >Proto Collection #zClass
Er0 EventListener Big #zClass
Er0 B #cInfo
Er0 #process
Er0 @TextInP .resExport .resExport #zField
Er0 @TextInP .type .type #zField
Er0 @TextInP .processKind .processKind #zField
Er0 @AnnotationInP-0n ai ai #zField
Er0 @MessageFlowInP-0n messageIn messageIn #zField
Er0 @MessageFlowOutP-0n messageOut messageOut #zField
Er0 @TextInP .xml .xml #zField
Er0 @TextInP .responsibility .responsibility #zField
Er0 @StartRequest f0 '' #zField
Er0 @EndTask f1 '' #zField
Er0 @RichDialog f3 '' #zField
Er0 @PushWFArc f4 '' #zField
Er0 @PushWFArc f2 '' #zField
>Proto Er0 Er0 EventListener #zField
Er0 f0 outLink start.ivp #txt
Er0 f0 type practiceJSF.EventListenerData #txt
Er0 f0 inParamDecl '<> param;' #txt
Er0 f0 actionDecl 'practiceJSF.EventListenerData out;
' #txt
Er0 f0 guid 15037D094C2B2A8F #txt
Er0 f0 requestEnabled true #txt
Er0 f0 triggerEnabled false #txt
Er0 f0 callSignature start() #txt
Er0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Er0 f0 @C|.responsibility Everybody #txt
Er0 f0 81 49 30 30 -21 17 #rect
Er0 f0 @|StartRequestIcon #fIcon
Er0 f1 type practiceJSF.EventListenerData #txt
Er0 f1 337 49 30 30 0 15 #rect
Er0 f1 @|EndIcon #fIcon
Er0 f3 targetWindow NEW:card: #txt
Er0 f3 targetDisplay TOP #txt
Er0 f3 richDialogId practiceJSF.UIEventHandling #txt
Er0 f3 startMethod start(practiceJSF.EventListenerData) #txt
Er0 f3 type practiceJSF.EventListenerData #txt
Er0 f3 requestActionDecl '<practiceJSF.EventListenerData eventListenerData> param;' #txt
Er0 f3 requestMappingAction 'param.eventListenerData=in;
' #txt
Er0 f3 responseActionDecl 'practiceJSF.EventListenerData out;
' #txt
Er0 f3 responseMappingAction 'out=result.eventListenerData;
' #txt
Er0 f3 windowConfiguration '* ' #txt
Er0 f3 isAsynch false #txt
Er0 f3 isInnerRd false #txt
Er0 f3 userContext '* ' #txt
Er0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Handle UI Events</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Er0 f3 168 42 112 44 -47 -8 #rect
Er0 f3 @|RichDialogIcon #fIcon
Er0 f4 expr out #txt
Er0 f4 111 64 168 64 #arcP
Er0 f2 expr out #txt
Er0 f2 280 64 337 64 #arcP
>Proto Er0 .type practiceJSF.EventListenerData #txt
>Proto Er0 .processKind NORMAL #txt
>Proto Er0 0 0 32 24 18 0 #rect
>Proto Er0 @|BIcon #fIcon
Er0 f0 mainOut f4 tail #connect
Er0 f4 head f3 mainIn #connect
Er0 f3 mainOut f2 tail #connect
Er0 f2 head f1 mainIn #connect