[Ivy]
1504796996D3A930 3.28 #module
>Proto >Proto Collection #zClass
Ar0 AdvancedInputFormular Big #zClass
Ar0 B #cInfo
Ar0 #process
Ar0 @TextInP .type .type #zField
Ar0 @TextInP .processKind .processKind #zField
Ar0 @AnnotationInP-0n ai ai #zField
Ar0 @MessageFlowInP-0n messageIn messageIn #zField
Ar0 @MessageFlowOutP-0n messageOut messageOut #zField
Ar0 @TextInP .xml .xml #zField
Ar0 @TextInP .responsibility .responsibility #zField
Ar0 @StartRequest f0 '' #zField
Ar0 @EndTask f1 '' #zField
Ar0 @UserDialog f3 '' #zField
Ar0 @PushWFArc f4 '' #zField
Ar0 @PushWFArc f2 '' #zField
>Proto Ar0 Ar0 AdvancedInputFormular #zField
Ar0 f0 outLink start.ivp #txt
Ar0 f0 inParamDecl '<> param;' #txt
Ar0 f0 requestEnabled true #txt
Ar0 f0 triggerEnabled false #txt
Ar0 f0 callSignature start() #txt
Ar0 f0 persist false #txt
Ar0 f0 startName '12. Advanced input-formular' #txt
Ar0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ar0 f0 showInStartList 1 #txt
Ar0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ar0 f0 @C|.responsibility Everybody #txt
Ar0 f0 81 49 30 30 -21 17 #rect
Ar0 f0 @|StartRequestIcon #fIcon
Ar0 f1 337 49 30 30 0 15 #rect
Ar0 f1 @|EndIcon #fIcon
Ar0 f3 dialogId practiceJSF.AvancedInputForm #txt
Ar0 f3 startMethod start() #txt
Ar0 f3 requestActionDecl '<> param;' #txt
Ar0 f3 responseActionDecl 'practiceJSF.Data out;
' #txt
Ar0 f3 responseMappingAction 'out=in;
' #txt
Ar0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>AdvancedInputForm</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ar0 f3 160 42 128 44 -54 -8 #rect
Ar0 f3 @|UserDialogIcon #fIcon
Ar0 f4 expr out #txt
Ar0 f4 111 64 160 64 #arcP
Ar0 f2 expr out #txt
Ar0 f2 288 64 337 64 #arcP
>Proto Ar0 .type practiceJSF.Data #txt
>Proto Ar0 .processKind NORMAL #txt
>Proto Ar0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ar0 0 0 32 24 18 0 #rect
>Proto Ar0 @|BIcon #fIcon
Ar0 f0 mainOut f4 tail #connect
Ar0 f4 head f3 mainIn #connect
Ar0 f3 mainOut f2 tail #connect
Ar0 f2 head f1 mainIn #connect
