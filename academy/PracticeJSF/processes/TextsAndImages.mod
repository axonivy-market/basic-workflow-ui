[Ivy]
1504C78D4F7B9173 7.5.0 #module
>Proto >Proto Collection #zClass
Ts0 TextsAndImages Big #zClass
Ts0 B #cInfo
Ts0 #process
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @StartRequest f0 '' #zField
Ts0 @EndTask f1 '' #zField
Ts0 @UserDialog f3 '' #zField
Ts0 @PushWFArc f4 '' #zField
Ts0 @PushWFArc f2 '' #zField
>Proto Ts0 Ts0 TextsAndImages #zField
Ts0 f0 outLink start.ivp #txt
Ts0 f0 inParamDecl '<> param;' #txt
Ts0 f0 requestEnabled true #txt
Ts0 f0 triggerEnabled false #txt
Ts0 f0 callSignature start() #txt
Ts0 f0 persist false #txt
Ts0 f0 startName '02. Output texts and images' #txt
Ts0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ts0 f0 showInStartList 1 #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 @C|.responsibility Everybody #txt
Ts0 f0 81 49 30 30 -21 17 #rect
Ts0 f0 @|StartRequestIcon #fIcon
Ts0 f1 337 49 30 30 0 15 #rect
Ts0 f1 @|EndIcon #fIcon
Ts0 f3 dialogId practiceJSF.TextsAndImages #txt
Ts0 f3 startMethod start() #txt
Ts0 f3 requestActionDecl '<> param;' #txt
Ts0 f3 responseActionDecl 'practiceJSF.Data out;
' #txt
Ts0 f3 responseMappingAction 'out=in;
' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TextsAndImages</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 168 42 112 44 -46 -8 #rect
Ts0 f3 @|UserDialogIcon #fIcon
Ts0 f4 expr out #txt
Ts0 f4 111 64 168 64 #arcP
Ts0 f2 expr out #txt
Ts0 f2 280 64 337 64 #arcP
>Proto Ts0 .type practiceJSF.Data #txt
>Proto Ts0 .processKind NORMAL #txt
>Proto Ts0 0 0 32 24 18 0 #rect
>Proto Ts0 @|BIcon #fIcon
Ts0 f0 mainOut f4 tail #connect
Ts0 f4 head f3 mainIn #connect
Ts0 f3 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
