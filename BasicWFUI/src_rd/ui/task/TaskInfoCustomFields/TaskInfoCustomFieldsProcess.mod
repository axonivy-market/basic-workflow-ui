[Ivy]
[>Created: Wed Dec 30 15:37:05 CET 2009]
125E0028FC03C9EB 3.13 #module
>Proto >Proto Collection #zClass
Ts0 TaskCustomFieldsDisplayProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f2 '' #zField
Ts0 @RichDialogInitStart f1 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @PushWFArc f11 '' #zField
Ts0 @RichDialogProcessStart f13 '' #zField
Ts0 @RichDialogProcessStep f15 '' #zField
Ts0 @PushWFArc f16 '' #zField
Ts0 @PushWFArc f14 '' #zField
>Proto Ts0 Ts0 TaskCustomFieldsDisplayProcess #zField
Ts0 f0 guid 118AD7391C6499FB #txt
Ts0 f0 type ui.task.TaskInfoCustomFields.TaskInfoCustomFieldsData #txt
Ts0 f0 method start() #txt
Ts0 f0 disableUIEvents false #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inParameterMapAction 'out.task=null;
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 embeddedRdInitializations '* ' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 110 102 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f2 type ui.task.TaskInfoCustomFields.TaskInfoCustomFieldsData #txt
Ts0 f2 107 451 26 26 14 0 #rect
Ts0 f2 @|RichDialogProcessEndIcon #fIcon
Ts0 f1 guid 1194BFF887B1084C #txt
Ts0 f1 type ui.task.TaskInfoCustomFields.TaskInfoCustomFieldsData #txt
Ts0 f1 method start(ch.ivyteam.ivy.workflow.ITask) #txt
Ts0 f1 disableUIEvents false #txt
Ts0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask aTask> param = methodEvent.getInputArguments();
' #txt
Ts0 f1 inParameterMapAction 'out.task=param.aTask;
' #txt
Ts0 f1 outParameterDecl '<> result;
' #txt
Ts0 f1 embeddedRdInitializations '* ' #txt
Ts0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ITask)</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f1 198 102 20 20 13 0 #rect
Ts0 f1 @|RichDialogInitStartIcon #fIcon
Ts0 f9 expr out #txt
Ts0 f9 208 122 133 464 #arcP
Ts0 f9 1 208 464 #addKink
Ts0 f9 0 0.6400218558946847 0 0 #arcLabel
Ts0 f11 expr out #txt
Ts0 f11 120 122 120 451 #arcP
Ts0 f13 guid 11B465DC54222720 #txt
Ts0 f13 type ui.task.TaskInfoCustomFields.TaskInfoCustomFieldsData #txt
Ts0 f13 actionDecl 'ui.task.TaskInfoCustomFields.TaskInfoCustomFieldsData out;
' #txt
Ts0 f13 actionTable 'out=in;
' #txt
Ts0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f13 286 278 20 20 13 0 #rect
Ts0 f13 @|RichDialogProcessStartIcon #fIcon
Ts0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set border''s title
with cms entries</name>
        <nameStyle>35,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f15 actionDecl 'ui.task.TaskInfoCustomFields.TaskInfoCustomFieldsData out;
' #txt
Ts0 f15 actionTable 'out=in;
' #txt
Ts0 f15 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;

(panel.customVarcharFieldsGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/basicwfui/labels/task/customFields/customVarcharFields"));
	
(panel.customDecimalFieldsGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/basicwfui/labels/task/customFields/customDecimalFields"));
	
(panel.customTimestampFieldsGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/basicwfui/labels/task/customFields/customTimestampFields"));' #txt
Ts0 f15 type ui.task.TaskInfoCustomFields.TaskInfoCustomFieldsData #txt
Ts0 f15 278 364 36 24 20 -2 #rect
Ts0 f15 @|RichDialogProcessStepIcon #fIcon
Ts0 f16 expr out #txt
Ts0 f16 296 298 296 364 #arcP
Ts0 f16 0 0.5334591690441431 0 0 #arcLabel
Ts0 f14 expr out #txt
Ts0 f14 296 388 133 464 #arcP
Ts0 f14 1 296 464 #addKink
Ts0 f14 0 0.7428959623858631 0 0 #arcLabel
>Proto Ts0 .type ui.task.TaskInfoCustomFields.TaskInfoCustomFieldsData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 .rdData2UIAction 'panel.customDecimalField1Label.visible=in.#task.#customDecimalField1 is initialized;
panel.customDecimalField1TextField.text="" + in.#task.#customDecimalField1;
panel.customDecimalField1TextField.visible=in.#task.#customDecimalField1 is initialized;
panel.customDecimalField2Label.visible=in.#task.#customDecimalField2 is initialized;
panel.customDecimalField2TextField.text="" + in.#task.#customDecimalField2;
panel.customDecimalField2TextField.visible=in.#task.#customDecimalField2 is initialized;
panel.customDecimalField3Label.visible=in.#task.#customDecimalField3 is initialized;
panel.customDecimalField3TextField.text="" + in.#task.#customDecimalField3;
panel.customDecimalField3TextField.visible=in.#task.#customDecimalField3 is initialized;
panel.customDecimalField4Label.visible=in.#task.#customDecimalField4 is initialized;
panel.customDecimalField4TextField.text="" + in.#task.#customDecimalField4;
panel.customDecimalField4TextField.visible=in.#task.#customDecimalField4 is initialized;
panel.customDecimalField5Label.visible=in.#task.#customDecimalField5 is initialized;
panel.customDecimalField5TextField.text="" + in.#task.#customDecimalField5;
panel.customDecimalField5TextField.visible=in.#task.#customDecimalField5 is initialized;
panel.customTimestampField1Label.visible=in.#task.#customTimestampField1 is initialized;
panel.customTimestampField1TextField.text="" + in.#task.#customTimestampField1;
panel.customTimestampField1TextField.visible=in.#task.#customTimestampField1 is initialized;
panel.customTimestampField2Label.visible=in.#task.#customTimestampField2 is initialized;
panel.customTimestampField2TextField.text="" + in.#task.#customTimestampField2;
panel.customTimestampField2TextField.visible=in.#task.#customTimestampField2 is initialized;
panel.customTimestampField3Label.visible=in.#task.#customTimestampField3 is initialized;
panel.customTimestampField3TextField.text="" + in.#task.#customTimestampField3;
panel.customTimestampField3TextField.visible=in.#task.#customTimestampField3 is initialized;
panel.customTimestampField4Label.visible=in.#task.#customTimestampField4 is initialized;
panel.customTimestampField4TextField.text="" + in.#task.#customTimestampField4;
panel.customTimestampField4TextField.visible=in.#task.#customTimestampField4 is initialized;
panel.customTimestampField5Label.visible=in.#task.#customTimestampField5 is initialized;
panel.customTimestampField5TextField.text="" + in.#task.#customTimestampField5;
panel.customTimestampField5TextField.visible=in.#task.#customTimestampField5 is initialized;
panel.customVarcharFiel2Label.visible=(in.#task.#customVarCharField2 is initialized);
panel.customVarcharFiel3Label.visible=(in.#task.#customVarCharField3 is initialized);
panel.customVarcharField1Label.visible=(in.#task.#customVarCharField1 is initialized);
panel.customVarcharField1TextField.text=in.#task.#customVarCharField1;
panel.customVarcharField1TextField.visible=(in.#task.#customVarCharField2 is initialized);
panel.customVarcharField2TextField.text=in.#task.#customVarCharField2;
panel.customVarcharField2TextField.visible=(in.#task.#customVarCharField2 is initialized);
panel.customVarcharField3TextField.text=in.#task.#customVarCharField3;
panel.customVarcharField3TextField.visible=(in.#task.#customVarCharField3 is initialized);
panel.customVarcharField4Label.visible=(in.#task.#customVarCharField4 is initialized);
panel.customVarcharField4TextField.text=in.#task.#customVarCharField4;
panel.customVarcharField4TextField.visible=(in.#task.#customVarCharField4 is initialized);
panel.customVarcharField5Label.visible=(in.#task.#customVarCharField5 is initialized);
panel.customVarcharField5TextField.text=in.#task.#customVarCharField5;
panel.customVarcharField5TextField.visible=(in.#task.#customVarCharField5 is initialized);
' #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f1 mainOut f9 tail #connect
Ts0 f9 head f2 mainIn #connect
Ts0 f0 mainOut f11 tail #connect
Ts0 f11 head f2 mainIn #connect
Ts0 f13 mainOut f16 tail #connect
Ts0 f16 head f15 mainIn #connect
Ts0 f15 mainOut f14 tail #connect
Ts0 f14 head f2 mainIn #connect