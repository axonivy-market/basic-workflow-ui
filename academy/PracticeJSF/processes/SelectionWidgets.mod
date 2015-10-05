[Ivy]
[>Created: Mon Oct 05 08:49:06 CEST 2015]
150285E8A4FA463A 3.17 #module
>Proto >Proto Collection #zClass
Ss0 SelectionWidgets Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @StartRequest f0 '' #zField
Ss0 @EndTask f1 '' #zField
Ss0 @RichDialog f3 '' #zField
Ss0 @GridStep f2 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @PushWFArc f6 '' #zField
Ss0 @GridStep f7 '' #zField
Ss0 @PushWFArc f8 '' #zField
Ss0 @PushWFArc f4 '' #zField
>Proto Ss0 Ss0 SelectionWidgets #zField
Ss0 f0 outLink start.ivp #txt
Ss0 f0 type schulungJSF.SelectOneWidgetsData #txt
Ss0 f0 inParamDecl '<> param;' #txt
Ss0 f0 actionDecl 'schulungJSF.SelectOneWidgetsData out;
' #txt
Ss0 f0 guid 150285E8A5BAC155 #txt
Ss0 f0 requestEnabled true #txt
Ss0 f0 triggerEnabled false #txt
Ss0 f0 callSignature start() #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 @C|.responsibility Everybody #txt
Ss0 f0 81 49 30 30 -21 17 #rect
Ss0 f0 @|StartRequestIcon #fIcon
Ss0 f1 type schulungJSF.SelectOneWidgetsData #txt
Ss0 f1 337 49 30 30 0 15 #rect
Ss0 f1 @|EndIcon #fIcon
Ss0 f3 targetWindow NEW:card: #txt
Ss0 f3 targetDisplay TOP #txt
Ss0 f3 richDialogId schulungJSF.SelectionWidget #txt
Ss0 f3 startMethod start(schulungJSF.ColorOrder) #txt
Ss0 f3 type schulungJSF.SelectOneWidgetsData #txt
Ss0 f3 requestActionDecl '<schulungJSF.ColorOrder preSelection> param;' #txt
Ss0 f3 requestMappingAction 'param.preSelection=in.colorOrder;
' #txt
Ss0 f3 responseActionDecl 'schulungJSF.SelectOneWidgetsData out;
' #txt
Ss0 f3 responseMappingAction 'out.colorOrder=result.colorOrder;
' #txt
Ss0 f3 windowConfiguration '* ' #txt
Ss0 f3 isAsynch false #txt
Ss0 f3 isInnerRd false #txt
Ss0 f3 userContext '* ' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SelectionWeigets</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 328 42 112 44 -48 -8 #rect
Ss0 f3 @|RichDialogIcon #fIcon
Ss0 f2 actionDecl 'schulungJSF.SelectOneWidgetsData out;
' #txt
Ss0 f2 actionTable 'out=in;
' #txt
Ss0 f2 type schulungJSF.SelectOneWidgetsData #txt
Ss0 f2 424 138 112 44 0 -8 #rect
Ss0 f2 @|StepIcon #fIcon
Ss0 f5 expr out #txt
Ss0 f5 384 86 424 160 #arcP
Ss0 f5 1 384 160 #addKink
Ss0 f5 1 0.4864866174906369 0 0 #arcLabel
Ss0 f6 expr out #txt
Ss0 f6 480 138 440 64 #arcP
Ss0 f6 1 480 64 #addKink
Ss0 f6 0 0.7702702702702703 0 0 #arcLabel
Ss0 f7 actionDecl 'schulungJSF.SelectOneWidgetsData out;
' #txt
Ss0 f7 actionTable 'out=in;
out.colorOrder.firstName="First Name";
' #txt
Ss0 f7 type schulungJSF.SelectOneWidgetsData #txt
Ss0 f7 168 42 112 44 0 -8 #rect
Ss0 f7 @|StepIcon #fIcon
Ss0 f8 expr out #txt
Ss0 f8 111 64 168 64 #arcP
Ss0 f4 expr out #txt
Ss0 f4 280 64 328 64 #arcP
>Proto Ss0 .type schulungJSF.SelectOneWidgetsData #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f3 mainOut f5 tail #connect
Ss0 f5 head f2 mainIn #connect
Ss0 f2 mainOut f6 tail #connect
Ss0 f6 head f3 mainIn #connect
Ss0 f0 mainOut f8 tail #connect
Ss0 f8 head f7 mainIn #connect
Ss0 f7 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
