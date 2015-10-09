[Ivy]
[>Created: Fri Oct 09 14:13:50 CEST 2015]
15022723A8529E45 3.17 #module
>Proto >Proto Collection #zClass
Dn0 OutputData Big #zClass
Dn0 B #cInfo
Dn0 #process
Dn0 @TextInP .resExport .resExport #zField
Dn0 @TextInP .type .type #zField
Dn0 @TextInP .processKind .processKind #zField
Dn0 @AnnotationInP-0n ai ai #zField
Dn0 @MessageFlowInP-0n messageIn messageIn #zField
Dn0 @MessageFlowOutP-0n messageOut messageOut #zField
Dn0 @TextInP .xml .xml #zField
Dn0 @TextInP .responsibility .responsibility #zField
Dn0 @StartRequest f0 '' #zField
Dn0 @EndTask f1 '' #zField
Dn0 @RichDialog f5 '' #zField
Dn0 @PushWFArc f3 '' #zField
Dn0 @PushWFArc f2 '' #zField
>Proto Dn0 Dn0 OutputData #zField
Dn0 f0 outLink start.ivp #txt
Dn0 f0 type practiceJSF.Data #txt
Dn0 f0 inParamDecl '<> param;' #txt
Dn0 f0 actionDecl 'practiceJSF.Data out;
' #txt
Dn0 f0 guid 15022723A8F7747C #txt
Dn0 f0 requestEnabled true #txt
Dn0 f0 triggerEnabled false #txt
Dn0 f0 callSignature start() #txt
Dn0 f0 persist false #txt
Dn0 f0 startName '03. Output data with converters' #txt
Dn0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Dn0 f0 showInStartList 1 #txt
Dn0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Dn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dn0 f0 @C|.responsibility Everybody #txt
Dn0 f0 81 49 30 30 -21 17 #rect
Dn0 f0 @|StartRequestIcon #fIcon
Dn0 f1 type practiceJSF.Data #txt
Dn0 f1 369 49 30 30 0 15 #rect
Dn0 f1 @|EndIcon #fIcon
Dn0 f5 targetWindow NEW:card: #txt
Dn0 f5 targetDisplay TOP #txt
Dn0 f5 richDialogId practiceJSF.OutputData #txt
Dn0 f5 startMethod start() #txt
Dn0 f5 type practiceJSF.Data #txt
Dn0 f5 requestActionDecl '<> param;' #txt
Dn0 f5 responseActionDecl 'practiceJSF.Data out;
' #txt
Dn0 f5 responseMappingAction 'out=in;
' #txt
Dn0 f5 windowConfiguration '* ' #txt
Dn0 f5 isAsynch false #txt
Dn0 f5 isInnerRd false #txt
Dn0 f5 userContext '* ' #txt
Dn0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OutputData</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dn0 f5 184 42 112 44 -31 -8 #rect
Dn0 f5 @|RichDialogIcon #fIcon
Dn0 f3 expr out #txt
Dn0 f3 111 64 184 64 #arcP
Dn0 f2 expr out #txt
Dn0 f2 296 64 369 64 #arcP
>Proto Dn0 .type practiceJSF.Data #txt
>Proto Dn0 .processKind NORMAL #txt
>Proto Dn0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Dn0 0 0 32 24 18 0 #rect
>Proto Dn0 @|BIcon #fIcon
Dn0 f0 mainOut f3 tail #connect
Dn0 f3 head f5 mainIn #connect
Dn0 f5 mainOut f2 tail #connect
Dn0 f2 head f1 mainIn #connect
