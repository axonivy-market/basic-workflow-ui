[Ivy]
[>Created: Fri Oct 09 14:08:55 CEST 2015]
15047F13E1C2DC79 3.17 #module
>Proto >Proto Collection #zClass
Bt0 BusinessChart Big #zClass
Bt0 B #cInfo
Bt0 #process
Bt0 @TextInP .resExport .resExport #zField
Bt0 @TextInP .type .type #zField
Bt0 @TextInP .processKind .processKind #zField
Bt0 @AnnotationInP-0n ai ai #zField
Bt0 @MessageFlowInP-0n messageIn messageIn #zField
Bt0 @MessageFlowOutP-0n messageOut messageOut #zField
Bt0 @TextInP .xml .xml #zField
Bt0 @TextInP .responsibility .responsibility #zField
Bt0 @StartRequest f0 '' #zField
Bt0 @EndTask f1 '' #zField
Bt0 @RichDialog f3 '' #zField
Bt0 @PushWFArc f2 '' #zField
Bt0 @PushWFArc f4 '' #zField
>Proto Bt0 Bt0 BusinessChart #zField
Bt0 f0 outLink start.ivp #txt
Bt0 f0 type practiceJSF.Data #txt
Bt0 f0 inParamDecl '<> param;' #txt
Bt0 f0 actionDecl 'practiceJSF.Data out;
' #txt
Bt0 f0 guid 15047F13E23D41DD #txt
Bt0 f0 requestEnabled true #txt
Bt0 f0 triggerEnabled false #txt
Bt0 f0 callSignature start() #txt
Bt0 f0 persist false #txt
Bt0 f0 startName '13. Business chart' #txt
Bt0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Bt0 f0 showInStartList 1 #txt
Bt0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
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
Bt0 f1 type practiceJSF.Data #txt
Bt0 f1 345 49 30 30 0 15 #rect
Bt0 f1 @|EndIcon #fIcon
Bt0 f3 targetWindow NEW:card: #txt
Bt0 f3 targetDisplay TOP #txt
Bt0 f3 richDialogId practiceJSF.BusinessChart #txt
Bt0 f3 startMethod start(practiceJSF.Data) #txt
Bt0 f3 type practiceJSF.Data #txt
Bt0 f3 requestActionDecl '<practiceJSF.Data data> param;' #txt
Bt0 f3 requestMappingAction 'param.data=in;
' #txt
Bt0 f3 responseActionDecl 'practiceJSF.Data out;
' #txt
Bt0 f3 responseMappingAction 'out=in;
' #txt
Bt0 f3 windowConfiguration '* ' #txt
Bt0 f3 isAsynch false #txt
Bt0 f3 isInnerRd false #txt
Bt0 f3 userContext '* ' #txt
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
Bt0 f3 @|RichDialogIcon #fIcon
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
