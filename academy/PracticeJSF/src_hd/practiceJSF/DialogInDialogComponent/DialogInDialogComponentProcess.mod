[Ivy]
[>Created: Tue Oct 13 15:20:49 CEST 2015]
15042C3E2237F4B3 3.17 #module
>Proto >Proto Collection #zClass
Ds0 DialogInDialogComponentProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogEnd f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @GridStep f6 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @PushWFArc f2 '' #zField
>Proto Ds0 Ds0 DialogInDialogComponentProcess #zField
Ds0 f0 guid 15042C3E23CE2AED #txt
Ds0 f0 type practiceJSF.DialogInDialogComponent.DialogInDialogComponentData #txt
Ds0 f0 method start(practiceJSF.Contact,practiceJSF.DialogInDialogData) #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<practiceJSF.Contact contact,practiceJSF.DialogInDialogData shared> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 inParameterMapAction 'out.contact=param.contact;
out.dialogInDialog=param.shared;
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(contact)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -35 15 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type practiceJSF.DialogInDialogComponent.DialogInDialogComponentData #txt
Ds0 f1 339 51 26 26 0 12 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f3 guid 15042C3E24683F7A #txt
Ds0 f3 type practiceJSF.DialogInDialogComponent.DialogInDialogComponentData #txt
Ds0 f3 actionDecl 'practiceJSF.DialogInDialogComponent.DialogInDialogComponentData out;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 147 26 26 -15 12 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f4 type practiceJSF.DialogInDialogComponent.DialogInDialogComponentData #txt
Ds0 f4 guid 15042C3E24635FDD #txt
Ds0 f4 211 147 26 26 0 12 #rect
Ds0 f4 @|RichDialogEndIcon #fIcon
Ds0 f5 expr out #txt
Ds0 f5 109 160 211 160 #arcP
Ds0 f6 actionDecl 'practiceJSF.DialogInDialogComponent.DialogInDialogComponentData out;
' #txt
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode 'import practiceJSF.Contact;
Contact denis;
denis.name="Huelin";
denis.firstName="Denis";

Contact reguel;
reguel.name="Wermelinger";
reguel.firstName="Reguel";

Contact christian;
christian.name="Strebel";
christian.firstName="Christian";

Contact bruno;
bruno.name="Bütler";
bruno.firstName="Bruno";

Contact renato;
renato.name="Stadler";
renato.firstName="Renato";

Contact barbara;
barbara.name="Brugger";
barbara.firstName="Barbara";

Contact caty;
caty.name="Hürlimann";
caty.firstName="Caty";

out.contacts=[denis, reguel, christian, bruno, renato, barbara, caty];' #txt
Ds0 f6 type practiceJSF.DialogInDialogComponent.DialogInDialogComponentData #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>generate contacts</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 168 42 112 44 -49 -8 #rect
Ds0 f6 @|StepIcon #fIcon
Ds0 f7 expr out #txt
Ds0 f7 109 64 168 64 #arcP
Ds0 f2 expr out #txt
Ds0 f2 280 64 339 64 #arcP
>Proto Ds0 .type practiceJSF.DialogInDialogComponent.DialogInDialogComponentData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f0 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f6 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
