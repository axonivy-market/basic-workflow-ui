[Ivy]
1504165967CE1CA4 7.5.0 #module
>Proto >Proto Collection #zClass
Ss0 ContactSensingLayout Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @StartRequest f0 '' #zField
Ss0 @EndTask f1 '' #zField
Ss0 @UserDialog f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @PushWFArc f2 '' #zField
>Proto Ss0 Ss0 ContactSensingLayout #zField
Ss0 f0 outLink start.ivp #txt
Ss0 f0 inParamDecl '<> param;' #txt
Ss0 f0 requestEnabled true #txt
Ss0 f0 triggerEnabled false #txt
Ss0 f0 callSignature start() #txt
Ss0 f0 persist false #txt
Ss0 f0 startName '08. Contact sensing with fieldSet' #txt
Ss0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ss0 f0 showInStartList 1 #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 @C|.responsibility Everybody #txt
Ss0 f0 81 49 30 30 -21 17 #rect
Ss0 f0 @|StartRequestIcon #fIcon
Ss0 f1 337 49 30 30 0 15 #rect
Ss0 f1 @|EndIcon #fIcon
Ss0 f3 dialogId practiceJSF.ContactSensingLayoutForm #txt
Ss0 f3 startMethod start(practiceJSF.ColorOrder) #txt
Ss0 f3 requestActionDecl '<practiceJSF.ColorOrder preSelection> param;' #txt
Ss0 f3 responseActionDecl 'practiceJSF.SelectionWidgetsData out;
' #txt
Ss0 f3 responseMappingAction 'out.colorOrder=result.colorOrder;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RegistrationForm</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 168 42 112 44 -48 -8 #rect
Ss0 f3 @|UserDialogIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 111 64 168 64 #arcP
Ss0 f2 expr out #txt
Ss0 f2 280 64 337 64 #arcP
Ss0 f2 0 0.8198198657861884 0 0 #arcLabel
>Proto Ss0 .type practiceJSF.SelectionWidgetsData #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f0 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
Ss0 f3 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
