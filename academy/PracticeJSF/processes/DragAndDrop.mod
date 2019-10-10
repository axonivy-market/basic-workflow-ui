[Ivy]
1504CA72D287699E 7.5.0 #module
>Proto >Proto Collection #zClass
Dp0 DragAndDrop Big #zClass
Dp0 B #cInfo
Dp0 #process
Dp0 @TextInP .type .type #zField
Dp0 @TextInP .processKind .processKind #zField
Dp0 @AnnotationInP-0n ai ai #zField
Dp0 @MessageFlowInP-0n messageIn messageIn #zField
Dp0 @MessageFlowOutP-0n messageOut messageOut #zField
Dp0 @TextInP .xml .xml #zField
Dp0 @TextInP .responsibility .responsibility #zField
Dp0 @StartRequest f0 '' #zField
Dp0 @EndTask f1 '' #zField
Dp0 @UserDialog f3 '' #zField
Dp0 @PushWFArc f4 '' #zField
Dp0 @PushWFArc f2 '' #zField
>Proto Dp0 Dp0 DragAndDrop #zField
Dp0 f0 outLink start.ivp #txt
Dp0 f0 inParamDecl '<> param;' #txt
Dp0 f0 requestEnabled true #txt
Dp0 f0 triggerEnabled false #txt
Dp0 f0 callSignature start() #txt
Dp0 f0 persist false #txt
Dp0 f0 startName '14. Drag and Drop' #txt
Dp0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Dp0 f0 showInStartList 1 #txt
Dp0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dp0 f0 @C|.responsibility Everybody #txt
Dp0 f0 81 49 30 30 -21 17 #rect
Dp0 f0 @|StartRequestIcon #fIcon
Dp0 f1 369 49 30 30 0 15 #rect
Dp0 f1 @|EndIcon #fIcon
Dp0 f3 dialogId practiceJSF.DragAndDropDialog #txt
Dp0 f3 startMethod start() #txt
Dp0 f3 requestActionDecl '<> param;' #txt
Dp0 f3 responseActionDecl 'practiceJSF.Data out;
' #txt
Dp0 f3 responseMappingAction 'out=in;
' #txt
Dp0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DragAndDropDialog</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dp0 f3 192 42 128 44 -55 -8 #rect
Dp0 f3 @|UserDialogIcon #fIcon
Dp0 f4 expr out #txt
Dp0 f4 111 64 192 64 #arcP
Dp0 f2 expr out #txt
Dp0 f2 320 64 369 64 #arcP
>Proto Dp0 .type practiceJSF.Data #txt
>Proto Dp0 .processKind NORMAL #txt
>Proto Dp0 0 0 32 24 18 0 #rect
>Proto Dp0 @|BIcon #fIcon
Dp0 f0 mainOut f4 tail #connect
Dp0 f4 head f3 mainIn #connect
Dp0 f3 mainOut f2 tail #connect
Dp0 f2 head f1 mainIn #connect
