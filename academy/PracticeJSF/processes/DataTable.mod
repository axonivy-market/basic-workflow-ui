[Ivy]
[>Created: Mon Oct 12 17:38:27 CEST 2015]
15023C7F4FB3D031 3.17 #module
>Proto >Proto Collection #zClass
De0 DataTable Big #zClass
De0 B #cInfo
De0 #process
De0 @TextInP .resExport .resExport #zField
De0 @TextInP .type .type #zField
De0 @TextInP .processKind .processKind #zField
De0 @AnnotationInP-0n ai ai #zField
De0 @MessageFlowInP-0n messageIn messageIn #zField
De0 @MessageFlowOutP-0n messageOut messageOut #zField
De0 @TextInP .xml .xml #zField
De0 @TextInP .responsibility .responsibility #zField
De0 @StartRequest f0 '' #zField
De0 @EndTask f1 '' #zField
De0 @GridStep f3 '' #zField
De0 @PushWFArc f4 '' #zField
De0 @PushWFArc f2 '' #zField
De0 @PushWFArc f6 '' #zField
De0 @RichDialog f5 '' #zField
>Proto De0 De0 DataTable #zField
De0 f0 outLink start.ivp #txt
De0 f0 type practiceJSF.DataTableData #txt
De0 f0 inParamDecl '<> param;' #txt
De0 f0 actionDecl 'practiceJSF.DataTableData out;
' #txt
De0 f0 guid 15023C7F50556723 #txt
De0 f0 requestEnabled true #txt
De0 f0 triggerEnabled false #txt
De0 f0 callSignature start() #txt
De0 f0 persist false #txt
De0 f0 startName '04. Datatable' #txt
De0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
De0 f0 showInStartList 1 #txt
De0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
De0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
De0 f0 @C|.responsibility Everybody #txt
De0 f0 81 49 30 30 -21 17 #rect
De0 f0 @|StartRequestIcon #fIcon
De0 f1 type practiceJSF.DataTableData #txt
De0 f1 497 49 30 30 0 15 #rect
De0 f1 @|EndIcon #fIcon
De0 f3 actionDecl 'practiceJSF.DataTableData out;
' #txt
De0 f3 actionTable 'out=in;
' #txt
De0 f3 actionCode '//setup a Recordset
out.contacts = new Recordset();
out.contacts.addColumn("name",["Meier", "Keller", "Muster"]);
out.contacts.addColumn("first name",["Yvonne", "Lara", "Felix"]);
out.contacts.addColumn("adress",["Lettenstrasse 7", "Alpenring 1", "Bahnhofstrasse 24"]);
out.contacts.addColumn("zip",["6303", "6310", "6000"]);
out.contacts.addColumn("city",["Zug", "Cham", "Luzern"]);


' #txt
De0 f3 type practiceJSF.DataTableData #txt
De0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Inscription</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
De0 f3 168 42 112 44 -28 -8 #rect
De0 f3 @|StepIcon #fIcon
De0 f4 expr out #txt
De0 f4 111 64 168 64 #arcP
De0 f2 expr out #txt
De0 f2 440 64 497 64 #arcP
De0 f6 expr out #txt
De0 f6 280 64 328 64 #arcP
De0 f5 targetWindow NEW:card: #txt
De0 f5 targetDisplay TOP #txt
De0 f5 richDialogId practiceJSF.DataTable #txt
De0 f5 startMethod start(Recordset) #txt
De0 f5 type practiceJSF.DataTableData #txt
De0 f5 requestActionDecl '<Recordset contacts> param;' #txt
De0 f5 requestMappingAction 'param.contacts=in.contacts;
' #txt
De0 f5 responseActionDecl 'practiceJSF.DataTableData out;
' #txt
De0 f5 windowConfiguration '* ' #txt
De0 f5 isAsynch false #txt
De0 f5 isInnerRd false #txt
De0 f5 userContext '* ' #txt
De0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DataTable</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
De0 f5 328 42 112 44 -28 -8 #rect
De0 f5 @|RichDialogIcon #fIcon
>Proto De0 .type practiceJSF.DataTableData #txt
>Proto De0 .processKind NORMAL #txt
>Proto De0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto De0 0 0 32 24 18 0 #rect
>Proto De0 @|BIcon #fIcon
De0 f0 mainOut f4 tail #connect
De0 f4 head f3 mainIn #connect
De0 f3 mainOut f6 tail #connect
De0 f6 head f5 mainIn #connect
De0 f5 mainOut f2 tail #connect
De0 f2 head f1 mainIn #connect
