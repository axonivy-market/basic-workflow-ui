[Ivy]
[>Created: Fri Dec 11 11:31:20 CET 2015]
1518C1BDAE6D978C 3.18 #module
>Proto >Proto Collection #zClass
Cn0 CaseListAdmin Big #zClass
Cn0 B #cInfo
Cn0 #process
Cn0 @TextInP .resExport .resExport #zField
Cn0 @TextInP .type .type #zField
Cn0 @TextInP .processKind .processKind #zField
Cn0 @AnnotationInP-0n ai ai #zField
Cn0 @MessageFlowInP-0n messageIn messageIn #zField
Cn0 @MessageFlowOutP-0n messageOut messageOut #zField
Cn0 @TextInP .xml .xml #zField
Cn0 @TextInP .responsibility .responsibility #zField
Cn0 @StartRequest f0 '' #zField
Cn0 @EndTask f1 '' #zField
Cn0 @RichDialog f3 '' #zField
Cn0 @PushWFArc f4 '' #zField
Cn0 @PushWFArc f2 '' #zField
>Proto Cn0 Cn0 CaseListAdmin #zField
Cn0 f0 outLink CaseListAdmin.ivp #txt
Cn0 f0 type ch.ivyteam.wf.Data #txt
Cn0 f0 inParamDecl '<> param;' #txt
Cn0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Cn0 f0 guid 1518C1BDAEE363BE #txt
Cn0 f0 requestEnabled true #txt
Cn0 f0 triggerEnabled false #txt
Cn0 f0 callSignature CaseListAdmin() #txt
Cn0 f0 persist false #txt
Cn0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Cn0 f0 showInStartList 0 #txt
Cn0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Cn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CaseListAdmin.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f0 @C|.responsibility Everybody #txt
Cn0 f0 81 49 30 30 -51 17 #rect
Cn0 f0 @|StartRequestIcon #fIcon
Cn0 f1 type ch.ivyteam.wf.Data #txt
Cn0 f1 337 49 30 30 0 15 #rect
Cn0 f1 @|EndIcon #fIcon
Cn0 f3 targetWindow NEW:card: #txt
Cn0 f3 targetDisplay TOP #txt
Cn0 f3 richDialogId ch.ivyteam.wf.admin.CaseListAdmin #txt
Cn0 f3 startMethod start() #txt
Cn0 f3 type ch.ivyteam.wf.Data #txt
Cn0 f3 requestActionDecl '<> param;' #txt
Cn0 f3 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Cn0 f3 responseMappingAction 'out=in;
' #txt
Cn0 f3 windowConfiguration '* ' #txt
Cn0 f3 isAsynch false #txt
Cn0 f3 isInnerRd false #txt
Cn0 f3 userContext '* ' #txt
Cn0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CaseListAdmin</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f3 168 42 112 44 -42 -8 #rect
Cn0 f3 @|RichDialogIcon #fIcon
Cn0 f4 expr out #txt
Cn0 f4 111 64 168 64 #arcP
Cn0 f2 expr out #txt
Cn0 f2 280 64 337 64 #arcP
>Proto Cn0 .type ch.ivyteam.wf.Data #txt
>Proto Cn0 .processKind NORMAL #txt
>Proto Cn0 0 0 32 24 18 0 #rect
>Proto Cn0 @|BIcon #fIcon
Cn0 f0 mainOut f4 tail #connect
Cn0 f4 head f3 mainIn #connect
Cn0 f3 mainOut f2 tail #connect
Cn0 f2 head f1 mainIn #connect
