[Ivy]
[>Created: Mon Sep 17 14:54:04 CEST 2012]
139D3A4CEEEDAA4B 3.17 #module
>Proto >Proto Collection #zClass
Do0 Demo Big #zClass
Do0 B #cInfo
Do0 #process
Do0 @TextInP .resExport .resExport #zField
Do0 @TextInP .type .type #zField
Do0 @TextInP .processKind .processKind #zField
Do0 @AnnotationInP-0n ai ai #zField
Do0 @TextInP .xml .xml #zField
Do0 @TextInP .responsibility .responsibility #zField
Do0 @StartRequest f0 '' #zField
Do0 @EndTask f1 '' #zField
Do0 @RichDialog f2 '' #zField
Do0 @PushWFArc f4 '' #zField
Do0 @StartRequest f5 '' #zField
Do0 @RichDialog f6 '' #zField
Do0 @PushWFArc f7 '' #zField
Do0 @EndTask f8 '' #zField
Do0 @PushWFArc f9 '' #zField
Do0 @PushWFArc f3 '' #zField
>Proto Do0 Do0 Demo #zField
Do0 f0 outLink start.ivp #txt
Do0 f0 type htmlDialogDemos.Data #txt
Do0 f0 inParamDecl '<> param;' #txt
Do0 f0 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f0 guid 139D3A4DA0038841 #txt
Do0 f0 requestEnabled true #txt
Do0 f0 triggerEnabled false #txt
Do0 f0 callSignature start() #txt
Do0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Do0 f0 @C|.responsibility Everybody #txt
Do0 f0 107 67 26 26 14 0 #rect
Do0 f0 @|StartRequestIcon #fIcon
Do0 f1 type htmlDialogDemos.Data #txt
Do0 f1 107 195 26 26 14 0 #rect
Do0 f1 @|EndIcon #fIcon
Do0 f2 targetWindow NEW:card: #txt
Do0 f2 targetDisplay TOP #txt
Do0 f2 richDialogId ch.ivyteam.htmldialog.demo.Main #txt
Do0 f2 startMethod start() #txt
Do0 f2 type htmlDialogDemos.Data #txt
Do0 f2 requestActionDecl '<> param;' #txt
Do0 f2 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f2 responseMappingAction 'out=in;
' #txt
Do0 f2 windowConfiguration '* ' #txt
Do0 f2 isAsynch false #txt
Do0 f2 isInnerRd false #txt
Do0 f2 userContext '* ' #txt
Do0 f2 102 132 36 24 20 -2 #rect
Do0 f2 @|RichDialogIcon #fIcon
Do0 f4 expr out #txt
Do0 f4 120 156 120 195 #arcP
Do0 f5 outLink OrderListDemo.ivp #txt
Do0 f5 type htmlDialogDemos.Data #txt
Do0 f5 inParamDecl '<> param;' #txt
Do0 f5 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f5 guid 139D3AF6915A9C77 #txt
Do0 f5 requestEnabled true #txt
Do0 f5 triggerEnabled false #txt
Do0 f5 callSignature OrderListDemo() #txt
Do0 f5 persist false #txt
Do0 f5 startName OrderListDemo #txt
Do0 f5 taskData '#
#Mon Sep 17 14:54:03 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Do0 f5 caseData '#
#Mon Sep 17 14:54:03 CEST 2012
businessCalendarName=
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Do0 f5 showInStartList 1 #txt
Do0 f5 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Do0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OrderListDemo.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Do0 f5 @C|.responsibility Everybody #txt
Do0 f5 107 283 26 26 14 0 #rect
Do0 f5 @|StartRequestIcon #fIcon
Do0 f6 targetWindow NEW:card: #txt
Do0 f6 targetDisplay TOP #txt
Do0 f6 richDialogId htmlDialogDemos.OrderListDemo #txt
Do0 f6 startMethod start() #txt
Do0 f6 type htmlDialogDemos.Data #txt
Do0 f6 requestActionDecl '<> param;' #txt
Do0 f6 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f6 responseMappingAction 'out=in;
' #txt
Do0 f6 windowConfiguration '* ' #txt
Do0 f6 isAsynch false #txt
Do0 f6 isInnerRd false #txt
Do0 f6 userContext '* ' #txt
Do0 f6 102 348 36 24 20 -2 #rect
Do0 f6 @|RichDialogIcon #fIcon
Do0 f7 expr out #txt
Do0 f7 120 309 120 348 #arcP
Do0 f8 type htmlDialogDemos.Data #txt
Do0 f8 107 403 26 26 14 0 #rect
Do0 f8 @|EndIcon #fIcon
Do0 f9 expr out #txt
Do0 f9 120 372 120 403 #arcP
Do0 f3 expr out #txt
Do0 f3 120 93 120 132 #arcP
>Proto Do0 .type htmlDialogDemos.Data #txt
>Proto Do0 .processKind NORMAL #txt
>Proto Do0 0 0 32 24 18 0 #rect
>Proto Do0 @|BIcon #fIcon
Do0 f2 mainOut f4 tail #connect
Do0 f4 head f1 mainIn #connect
Do0 f5 mainOut f7 tail #connect
Do0 f7 head f6 mainIn #connect
Do0 f6 mainOut f9 tail #connect
Do0 f9 head f8 mainIn #connect
Do0 f0 mainOut f3 tail #connect
Do0 f3 head f2 mainIn #connect
