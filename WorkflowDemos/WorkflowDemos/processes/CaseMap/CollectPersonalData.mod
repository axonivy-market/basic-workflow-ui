[Ivy]
[>Created: Mon May 29 16:23:28 CEST 2017]
15A5AC9A4F755A3B 3.20 #module
>Proto >Proto Collection #zClass
Ca0 CollectPersonalData Big #zClass
Ca0 B #cInfo
Ca0 #process
Ca0 @TextInP .resExport .resExport #zField
Ca0 @TextInP .type .type #zField
Ca0 @TextInP .processKind .processKind #zField
Ca0 @AnnotationInP-0n ai ai #zField
Ca0 @MessageFlowInP-0n messageIn messageIn #zField
Ca0 @MessageFlowOutP-0n messageOut messageOut #zField
Ca0 @TextInP .xml .xml #zField
Ca0 @TextInP .responsibility .responsibility #zField
Ca0 @StartRequest f0 '' #zField
Ca0 @EndTask f1 '' #zField
Ca0 @GridStep f3 '' #zField
Ca0 @PushWFArc f2 '' #zField
Ca0 @RichDialog f5 '' #zField
Ca0 @PushWFArc f6 '' #zField
Ca0 @PushWFArc f4 '' #zField
>Proto Ca0 Ca0 CollectPersonalData #zField
Ca0 f0 outLink start.ivp #txt
Ca0 f0 type workflow.humantask.Data #txt
Ca0 f0 inParamDecl '<> param;' #txt
Ca0 f0 actionDecl 'workflow.humantask.Data out;
' #txt
Ca0 f0 guid 15A5AC9A50D3751B #txt
Ca0 f0 requestEnabled true #txt
Ca0 f0 triggerEnabled false #txt
Ca0 f0 callSignature start() #txt
Ca0 f0 persist true #txt
Ca0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.NAM=Collect Personal Data' #txt
Ca0 f0 caseData businessCase.attach=true #txt
Ca0 f0 wfuser 1 #txt
Ca0 f0 showInStartList 0 #txt
Ca0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ca0 f0 @C|.responsibility Everybody #txt
Ca0 f0 81 49 30 30 -21 17 #rect
Ca0 f0 @|StartRequestIcon #fIcon
Ca0 f1 type workflow.humantask.Data #txt
Ca0 f1 593 49 30 30 0 15 #rect
Ca0 f1 @|EndIcon #fIcon
Ca0 f3 actionDecl 'workflow.humantask.Data out;
' #txt
Ca0 f3 actionTable 'out=in;
' #txt
Ca0 f3 actionCode 'ivy.case.getBusinessCase().setName("Lending");
ivy.log.info("Business Process is in Stage " + ivy.case.getBusinessCase().getStage().getName());
' #txt
Ca0 f3 type workflow.humantask.Data #txt
Ca0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set business case name
+ log stage</name>
        <nameStyle>34,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ca0 f3 360 42 160 44 -62 -16 #rect
Ca0 f3 @|StepIcon #fIcon
Ca0 f2 expr out #txt
Ca0 f2 520 64 593 64 #arcP
Ca0 f5 targetWindow NEW #txt
Ca0 f5 targetDisplay TOP #txt
Ca0 f5 richDialogId workflow.credit.CollectPersonData #txt
Ca0 f5 startMethod start() #txt
Ca0 f5 type workflow.humantask.Data #txt
Ca0 f5 requestActionDecl '<> param;' #txt
Ca0 f5 responseActionDecl 'workflow.humantask.Data out;
' #txt
Ca0 f5 isAsynch false #txt
Ca0 f5 isInnerRd false #txt
Ca0 f5 168 42 112 44 0 -8 #rect
Ca0 f5 @|RichDialogIcon #fIcon
Ca0 f6 expr out #txt
Ca0 f6 111 64 168 64 #arcP
Ca0 f4 expr out #txt
Ca0 f4 280 64 360 64 #arcP
>Proto Ca0 .type workflow.humantask.Data #txt
>Proto Ca0 .processKind NORMAL #txt
>Proto Ca0 0 0 32 24 18 0 #rect
>Proto Ca0 @|BIcon #fIcon
Ca0 f3 mainOut f2 tail #connect
Ca0 f2 head f1 mainIn #connect
Ca0 f0 mainOut f6 tail #connect
Ca0 f6 head f5 mainIn #connect
Ca0 f5 mainOut f4 tail #connect
Ca0 f4 head f3 mainIn #connect
