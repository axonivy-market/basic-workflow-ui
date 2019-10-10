[Ivy]
15047F13E1C2DC79 7.5.0 #module
>Proto >Proto Collection #zClass
Bt0 BusinessChart Big #zClass
Bt0 B #cInfo
Bt0 #process
Bt0 @TextInP .type .type #zField
Bt0 @TextInP .processKind .processKind #zField
Bt0 @AnnotationInP-0n ai ai #zField
Bt0 @MessageFlowInP-0n messageIn messageIn #zField
Bt0 @MessageFlowOutP-0n messageOut messageOut #zField
Bt0 @TextInP .xml .xml #zField
Bt0 @TextInP .responsibility .responsibility #zField
Bt0 @StartRequest f0 '' #zField
Bt0 @EndTask f1 '' #zField
Bt0 @UserDialog f3 '' #zField
Bt0 @PushWFArc f2 '' #zField
Bt0 @PushWFArc f4 '' #zField
>Proto Bt0 Bt0 BusinessChart #zField
Bt0 f0 outLink start.ivp #txt
Bt0 f0 inParamDecl '<> param;' #txt
Bt0 f0 requestEnabled true #txt
Bt0 f0 triggerEnabled false #txt
Bt0 f0 callSignature start() #txt
Bt0 f0 persist false #txt
Bt0 f0 startName '13. Business chart' #txt
Bt0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Bt0 f0 showInStartList 1 #txt
Bt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bt0 f0 @C|.responsibility Everybody #txt
Bt0 f0 81 49 30 30 -21 17 #rect
Bt0 f0 @|StartRequestIcon #fIcon
Bt0 f1 345 49 30 30 0 15 #rect
Bt0 f1 @|EndIcon #fIcon
Bt0 f3 dialogId practiceJSF.BusinessChart #txt
Bt0 f3 startMethod start(practiceJSF.Data) #txt
Bt0 f3 requestActionDecl '<practiceJSF.Data data> param;' #txt
Bt0 f3 requestMappingAction 'param.data=in;
' #txt
Bt0 f3 responseActionDecl 'practiceJSF.Data out;
' #txt
Bt0 f3 responseMappingAction 'out=in;
' #txt
Bt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Business Chart</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bt0 f3 176 42 112 44 -43 -8 #rect
Bt0 f3 @|UserDialogIcon #fIcon
Bt0 f2 expr out #txt
Bt0 f2 288 64 345 64 #arcP
Bt0 f4 expr out #txt
Bt0 f4 111 64 176 64 #arcP
>Proto Bt0 .type practiceJSF.Data #txt
>Proto Bt0 .processKind NORMAL #txt
>Proto Bt0 0 0 32 24 18 0 #rect
>Proto Bt0 @|BIcon #fIcon
Bt0 f3 mainOut f2 tail #connect
Bt0 f2 head f1 mainIn #connect
Bt0 f0 mainOut f4 tail #connect
Bt0 f4 head f3 mainIn #connect
