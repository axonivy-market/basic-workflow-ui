[Ivy]
[>Created: Mon Jul 22 10:02:59 CEST 2013]
13F3D94AF2F236BF 3.17 #module
>Proto >Proto Collection #zClass
Wl0 WfHtml Big #zClass
Wl0 B #cInfo
Wl0 #process
Wl0 @TextInP .resExport .resExport #zField
Wl0 @TextInP .type .type #zField
Wl0 @TextInP .processKind .processKind #zField
Wl0 @AnnotationInP-0n ai ai #zField
Wl0 @TextInP .xml .xml #zField
Wl0 @TextInP .responsibility .responsibility #zField
Wl0 @StartRequest f0 '' #zField
Wl0 @Page f1 '' #zField
Wl0 @Page f2 '' #zField
Wl0 @EndTask f3 '' #zField
Wl0 @TaskSwitchSimple f4 '' #zField
Wl0 @PushWFArc f7 '' #zField
Wl0 @PushWFArc f8 '' #zField
Wl0 @GridStep f9 '' #zField
Wl0 @PushWFArc f10 '' #zField
Wl0 @PushWFArc f5 '' #zField
Wl0 @TkArc f6 '' #zField
>Proto Wl0 Wl0 WfHtml #zField
Wl0 f0 outLink WfHtml.ivp #txt
Wl0 f0 type ch.ivyteam.wf.test.Data #txt
Wl0 f0 inParamDecl '<> param;' #txt
Wl0 f0 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Wl0 f0 guid 13F3D95E53B80A79 #txt
Wl0 f0 requestEnabled true #txt
Wl0 f0 triggerEnabled false #txt
Wl0 f0 callSignature WfHtml() #txt
Wl0 f0 persist false #txt
Wl0 f0 startName 'Test Workflow Html' #txt
Wl0 f0 startDescription 'Sample WF using Web Pages' #txt
Wl0 f0 taskData '#
#Fri Jun 14 13:05:55 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.NAM=Start Task
' #txt
Wl0 f0 caseData '#
#Fri Jun 14 13:05:55 CEST 2013
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
case.name=A Html Case
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
Wl0 f0 showInStartList 1 #txt
Wl0 f0 taskAndCaseSetupAction 'ivy.case.setName(engine.expandMacros("A Html Case"));
import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setName(engine.expandMacros("Start Task"));
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Wl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>WfHtml.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Wl0 f0 @C|.responsibility Everybody #txt
Wl0 f0 115 51 26 26 14 0 #rect
Wl0 f0 @|StartRequestIcon #fIcon
Wl0 f1 outTypes "ch.ivyteam.wf.test.Data" #txt
Wl0 f1 outLinks "LinkA.ivp" #txt
Wl0 f1 template "/ProcessPages/WfHtml/Page1.ivc" #txt
Wl0 f1 type ch.ivyteam.wf.test.Data #txt
Wl0 f1 skipLink skip.ivp #txt
Wl0 f1 sortLink sort.ivp #txt
Wl0 f1 templateWizard '#
#Fri Jul 19 16:46:04 CEST 2013
' #txt
Wl0 f1 pageArchivingActivated true #txt
Wl0 f1 pageArchiveName Page1 #txt
Wl0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RequestForm</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Wl0 f1 @C|.responsibility Everybody #txt
Wl0 f1 110 180 36 24 20 -2 #rect
Wl0 f1 @|PageIcon #fIcon
Wl0 f2 outTypes "ch.ivyteam.wf.test.Data" #txt
Wl0 f2 outLinks "LinkA.ivp" #txt
Wl0 f2 template "/ProcessPages/WfHtml/Page2.ivc" #txt
Wl0 f2 type ch.ivyteam.wf.test.Data #txt
Wl0 f2 skipLink skip.ivp #txt
Wl0 f2 sortLink sort.ivp #txt
Wl0 f2 templateWizard '#
#Fri Jul 19 16:46:17 CEST 2013
' #txt
Wl0 f2 pageArchivingActivated true #txt
Wl0 f2 pageArchiveName Page2 #txt
Wl0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ConfirmationPage</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Wl0 f2 @C|.responsibility Everybody #txt
Wl0 f2 110 308 36 24 20 -2 #rect
Wl0 f2 @|PageIcon #fIcon
Wl0 f3 type ch.ivyteam.wf.test.Data #txt
Wl0 f3 115 371 26 26 14 0 #rect
Wl0 f3 @|EndIcon #fIcon
Wl0 f4 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Wl0 f4 actionTable 'out=in1;
' #txt
Wl0 f4 outTypes "ch.ivyteam.wf.test.Data" #txt
Wl0 f4 outLinks "TaskA.ivp" #txt
Wl0 f4 caseData '#
#Fri Jun 14 13:25:33 CEST 2013
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
Wl0 f4 taskData '#
#Fri Jun 14 13:25:33 CEST 2013
TaskA.DESC=<%\=in1.description%>
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Html <%\=in1.caption%>
TaskA.PRI=in1.prio
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
' #txt
Wl0 f4 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Html <%=in1.caption%>"));
taskDef.setDescription(engine.expandMacros("<%=in1.description%>"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(in1.prio));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Wl0 f4 type ch.ivyteam.wf.test.Data #txt
Wl0 f4 template "" #txt
Wl0 f4 114 242 28 28 14 0 #rect
Wl0 f4 @|TaskSwitchSimpleIcon #fIcon
Wl0 f7 expr data #txt
Wl0 f7 outCond ivp=="TaskA.ivp" #txt
Wl0 f7 128 270 128 308 #arcP
Wl0 f8 expr data #txt
Wl0 f8 outCond ivp=="LinkA.ivp" #txt
Wl0 f8 128 332 128 371 #arcP
Wl0 f9 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Wl0 f9 actionTable 'out=in;
out.prio=2;
' #txt
Wl0 f9 type ch.ivyteam.wf.test.Data #txt
Wl0 f9 110 116 36 24 20 -2 #rect
Wl0 f9 @|StepIcon #fIcon
Wl0 f10 expr out #txt
Wl0 f10 128 77 128 116 #arcP
Wl0 f5 expr out #txt
Wl0 f5 128 140 128 180 #arcP
Wl0 f6 expr data #txt
Wl0 f6 outCond ivp=="LinkA.ivp" #txt
Wl0 f6 type ch.ivyteam.wf.test.Data #txt
Wl0 f6 var in1 #txt
Wl0 f6 128 204 128 242 #arcP
Wl0 f6 0 0.4620603161780597 0 0 #arcLabel
>Proto Wl0 .type ch.ivyteam.wf.test.Data #txt
>Proto Wl0 .processKind NORMAL #txt
>Proto Wl0 0 0 32 24 18 0 #rect
>Proto Wl0 @|BIcon #fIcon
Wl0 f4 out f7 tail #connect
Wl0 f7 head f2 mainIn #connect
Wl0 f2 out f8 tail #connect
Wl0 f8 head f3 mainIn #connect
Wl0 f0 mainOut f10 tail #connect
Wl0 f10 head f9 mainIn #connect
Wl0 f9 mainOut f5 tail #connect
Wl0 f5 head f1 mainIn #connect
Wl0 f1 out f6 tail #connect
Wl0 f6 head f4 in #connect
