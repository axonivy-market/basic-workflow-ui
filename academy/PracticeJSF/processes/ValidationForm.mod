[Ivy]
1503D99612EE10F2 3.28 #module
>Proto >Proto Collection #zClass
Vm0 ValidationForm Big #zClass
Vm0 B #cInfo
Vm0 #process
Vm0 @TextInP .type .type #zField
Vm0 @TextInP .processKind .processKind #zField
Vm0 @AnnotationInP-0n ai ai #zField
Vm0 @MessageFlowInP-0n messageIn messageIn #zField
Vm0 @MessageFlowOutP-0n messageOut messageOut #zField
Vm0 @TextInP .xml .xml #zField
Vm0 @TextInP .responsibility .responsibility #zField
Vm0 @StartRequest f0 '' #zField
Vm0 @EndTask f1 '' #zField
Vm0 @UserDialog f3 '' #zField
Vm0 @PushWFArc f4 '' #zField
Vm0 @PushWFArc f2 '' #zField
>Proto Vm0 Vm0 ValidationForm #zField
Vm0 f0 outLink start.ivp #txt
Vm0 f0 inParamDecl '<> param;' #txt
Vm0 f0 requestEnabled true #txt
Vm0 f0 triggerEnabled false #txt
Vm0 f0 callSignature start() #txt
Vm0 f0 persist false #txt
Vm0 f0 startName '07. Formular with inputvalidation' #txt
Vm0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Vm0 f0 showInStartList 1 #txt
Vm0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vm0 f0 @C|.responsibility Everybody #txt
Vm0 f0 81 49 30 30 -21 17 #rect
Vm0 f0 @|StartRequestIcon #fIcon
Vm0 f1 337 49 30 30 0 15 #rect
Vm0 f1 @|EndIcon #fIcon
Vm0 f3 dialogId practiceJSF.ValidationFormular #txt
Vm0 f3 startMethod start(practiceJSF.ValidationFormData) #txt
Vm0 f3 requestActionDecl '<practiceJSF.ValidationFormData validationFormData> param;' #txt
Vm0 f3 requestMappingAction 'param.validationFormData=in;
' #txt
Vm0 f3 requestActionCode ivy.session.setContentLocale("en","US"); #txt
Vm0 f3 responseActionDecl 'practiceJSF.ValidationFormData out;
' #txt
Vm0 f3 responseMappingAction 'out=result.validationFormData;
' #txt
Vm0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ValidationFormular</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vm0 f3 168 42 112 44 -52 -8 #rect
Vm0 f3 @|UserDialogIcon #fIcon
Vm0 f4 expr out #txt
Vm0 f4 111 64 168 64 #arcP
Vm0 f2 expr out #txt
Vm0 f2 280 64 337 64 #arcP
>Proto Vm0 .type practiceJSF.ValidationFormData #txt
>Proto Vm0 .processKind NORMAL #txt
>Proto Vm0 0 0 32 24 18 0 #rect
>Proto Vm0 @|BIcon #fIcon
Vm0 f0 mainOut f4 tail #connect
Vm0 f4 head f3 mainIn #connect
Vm0 f3 mainOut f2 tail #connect
Vm0 f2 head f1 mainIn #connect
