[Ivy]
[>Created: Thu Oct 15 16:27:46 CEST 2015]
1506B9015A6F95EB 3.17 #module
>Proto >Proto Collection #zClass
Md0 Mastermind Big #zClass
Md0 B #cInfo
Md0 #process
Md0 @TextInP .resExport .resExport #zField
Md0 @TextInP .type .type #zField
Md0 @TextInP .processKind .processKind #zField
Md0 @AnnotationInP-0n ai ai #zField
Md0 @MessageFlowInP-0n messageIn messageIn #zField
Md0 @MessageFlowOutP-0n messageOut messageOut #zField
Md0 @TextInP .xml .xml #zField
Md0 @TextInP .responsibility .responsibility #zField
Md0 @StartRequest f0 '' #zField
Md0 @EndTask f1 '' #zField
Md0 @RichDialog f3 '' #zField
Md0 @PushWFArc f4 '' #zField
Md0 @PushWFArc f2 '' #zField
>Proto Md0 Md0 Mastermind #zField
Md0 f0 outLink start.ivp #txt
Md0 f0 type practiceJSF.MastermindData #txt
Md0 f0 inParamDecl '<> param;' #txt
Md0 f0 actionDecl 'practiceJSF.MastermindData out;
' #txt
Md0 f0 guid 1506B9015B120D48 #txt
Md0 f0 requestEnabled true #txt
Md0 f0 triggerEnabled false #txt
Md0 f0 callSignature start() #txt
Md0 f0 persist false #txt
Md0 f0 startName 'Bonus: Mastermind the Game' #txt
Md0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Md0 f0 showInStartList 1 #txt
Md0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Md0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Md0 f0 @C|.responsibility Everybody #txt
Md0 f0 81 49 30 30 -21 17 #rect
Md0 f0 @|StartRequestIcon #fIcon
Md0 f1 type practiceJSF.MastermindData #txt
Md0 f1 369 49 30 30 0 15 #rect
Md0 f1 @|EndIcon #fIcon
Md0 f3 targetWindow NEW:card: #txt
Md0 f3 targetDisplay TOP #txt
Md0 f3 richDialogId practiceJSF.MastermindDialog #txt
Md0 f3 startMethod start() #txt
Md0 f3 type practiceJSF.MastermindData #txt
Md0 f3 requestActionDecl '<> param;' #txt
Md0 f3 responseActionDecl 'practiceJSF.MastermindData out;
' #txt
Md0 f3 responseMappingAction 'out=in;
' #txt
Md0 f3 windowConfiguration '* ' #txt
Md0 f3 isAsynch false #txt
Md0 f3 isInnerRd false #txt
Md0 f3 userContext '* ' #txt
Md0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Mastermind the Game</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Md0 f3 192 42 128 44 -61 -8 #rect
Md0 f3 @|RichDialogIcon #fIcon
Md0 f4 expr out #txt
Md0 f4 111 64 192 64 #arcP
Md0 f2 expr out #txt
Md0 f2 320 64 369 64 #arcP
>Proto Md0 .type practiceJSF.MastermindData #txt
>Proto Md0 .processKind NORMAL #txt
>Proto Md0 0 0 32 24 18 0 #rect
>Proto Md0 @|BIcon #fIcon
Md0 f0 mainOut f4 tail #connect
Md0 f4 head f3 mainIn #connect
Md0 f3 mainOut f2 tail #connect
Md0 f2 head f1 mainIn #connect
