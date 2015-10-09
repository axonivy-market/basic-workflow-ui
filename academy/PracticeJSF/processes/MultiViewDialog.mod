[Ivy]
[>Created: Fri Oct 09 14:08:08 CEST 2015]
1504284B0DCDB546 3.17 #module
>Proto >Proto Collection #zClass
Mg0 MultiViewDialog Big #zClass
Mg0 B #cInfo
Mg0 #process
Mg0 @TextInP .resExport .resExport #zField
Mg0 @TextInP .type .type #zField
Mg0 @TextInP .processKind .processKind #zField
Mg0 @AnnotationInP-0n ai ai #zField
Mg0 @MessageFlowInP-0n messageIn messageIn #zField
Mg0 @MessageFlowOutP-0n messageOut messageOut #zField
Mg0 @TextInP .xml .xml #zField
Mg0 @TextInP .responsibility .responsibility #zField
Mg0 @StartRequest f0 '' #zField
Mg0 @EndTask f1 '' #zField
Mg0 @RichDialog f3 '' #zField
Mg0 @PushWFArc f4 '' #zField
Mg0 @PushWFArc f2 '' #zField
>Proto Mg0 Mg0 MultiViewDialog #zField
Mg0 f0 outLink start.ivp #txt
Mg0 f0 type practiceJSF.MultiViewDialogData #txt
Mg0 f0 inParamDecl '<> param;' #txt
Mg0 f0 actionDecl 'practiceJSF.MultiViewDialogData out;
' #txt
Mg0 f0 guid 1504284B0E38CD0A #txt
Mg0 f0 requestEnabled true #txt
Mg0 f0 triggerEnabled false #txt
Mg0 f0 callSignature start() #txt
Mg0 f0 persist false #txt
Mg0 f0 startName '10. Multiview dialog' #txt
Mg0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Mg0 f0 showInStartList 1 #txt
Mg0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Mg0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Mg0 f0 @C|.responsibility Everybody #txt
Mg0 f0 81 49 30 30 -21 17 #rect
Mg0 f0 @|StartRequestIcon #fIcon
Mg0 f1 type practiceJSF.MultiViewDialogData #txt
Mg0 f1 337 49 30 30 0 15 #rect
Mg0 f1 @|EndIcon #fIcon
Mg0 f3 targetWindow NEW:card: #txt
Mg0 f3 targetDisplay TOP #txt
Mg0 f3 richDialogId practiceJSF.MultiView #txt
Mg0 f3 startMethod start(practiceJSF.MultiViewDialogData) #txt
Mg0 f3 type practiceJSF.MultiViewDialogData #txt
Mg0 f3 requestActionDecl '<practiceJSF.MultiViewDialogData multiViewDialogData> param;' #txt
Mg0 f3 requestMappingAction 'param.multiViewDialogData=in;
' #txt
Mg0 f3 responseActionDecl 'practiceJSF.MultiViewDialogData out;
' #txt
Mg0 f3 responseMappingAction 'out=result.multiViewDialogData;
' #txt
Mg0 f3 windowConfiguration '* ' #txt
Mg0 f3 isAsynch false #txt
Mg0 f3 isInnerRd false #txt
Mg0 f3 userContext '* ' #txt
Mg0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Wizard with MultiView</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Mg0 f3 160 42 128 44 -58 -8 #rect
Mg0 f3 @|RichDialogIcon #fIcon
Mg0 f4 expr out #txt
Mg0 f4 111 64 160 64 #arcP
Mg0 f2 expr out #txt
Mg0 f2 288 64 337 64 #arcP
>Proto Mg0 .type practiceJSF.MultiViewDialogData #txt
>Proto Mg0 .processKind NORMAL #txt
>Proto Mg0 0 0 32 24 18 0 #rect
>Proto Mg0 @|BIcon #fIcon
Mg0 f0 mainOut f4 tail #connect
Mg0 f4 head f3 mainIn #connect
Mg0 f3 mainOut f2 tail #connect
Mg0 f2 head f1 mainIn #connect
