[Ivy]
[>Created: Fri Jun 10 14:08:31 CEST 2016]
153D1CC01F460F8B 3.18 #module
>Proto >Proto Collection #zClass
Ds0 DataTableDemoProcess Big #zClass
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
Ds0 @RichDialogProcessEnd f9 '' #zField
Ds0 @GridStep f11 '' #zField
Ds0 @PushWFArc f10 '' #zField
Ds0 @PushWFArc f12 '' #zField
Ds0 @RichDialogProcessStart f8 '' #zField
Ds0 @PushWFArc f15 '' #zField
Ds0 @RichDialogMethodStart f13 '' #zField
>Proto Ds0 Ds0 DataTableDemoProcess #zField
Ds0 f0 guid 153D1CC021F1C2E7 #txt
Ds0 f0 type ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData #txt
Ds0 f0 method start() #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -16 15 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData #txt
Ds0 f1 339 51 26 26 0 12 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f3 guid 153D1CC0233591EA #txt
Ds0 f3 type ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData #txt
Ds0 f3 actionDecl 'ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData out;
' #txt
Ds0 f3 actionTable 'out=in;
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
Ds0 f4 type ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData #txt
Ds0 f4 guid 153D1CC0234134B6 #txt
Ds0 f4 211 147 26 26 0 12 #rect
Ds0 f4 @|RichDialogEndIcon #fIcon
Ds0 f5 expr out #txt
Ds0 f5 109 160 211 160 #arcP
Ds0 f6 actionDecl 'ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData out;
' #txt
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode 'import ch.ivyteam.htmldialog.demo.Score;

// init list with some items
out.scores.add((new Score()).setId(100).setName("Beni").setPoints(2563));
out.scores.add((new Score()).setId(110).setName("Achmed").setPoints(346));
out.scores.add((new Score()).setId(221).setName("Cyril").setPoints(4654));
out.scores.add((new Score()).setId(238).setName("Birgit").setPoints(6666));
out.scores.add((new Score()).setId(340).setName("Maurice").setPoints(324));
out.scores.add((new Score()).setId(450).setName("Daisy").setPoints(2679));
out.scores.add((new Score()).setId(455).setName("Yvonne").setPoints(1324));
out.scores.add((new Score()).setId(550).setName("Nadia").setPoints(2639));
out.scores.add((new Score()).setId(634).setName("Mike").setPoints(9324));
out.scores.add((new Score()).setId(650).setName("Peter").setPoints(2479));
out.scores.add((new Score()).setId(700).setName("Charly").setPoints(3424));
out.scores.add((new Score()).setId(850).setName("Tim").setPoints(2889));

// init list of names
for(Score scr : out.scores)
{
	out.names.add(scr.name);	
}' #txt
Ds0 f6 type ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load Data</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 168 42 112 44 -26 -8 #rect
Ds0 f6 @|StepIcon #fIcon
Ds0 f7 expr out #txt
Ds0 f7 109 64 168 64 #arcP
Ds0 f2 expr out #txt
Ds0 f2 280 64 339 64 #arcP
Ds0 f9 type ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData #txt
Ds0 f9 339 243 26 26 0 12 #rect
Ds0 f9 @|RichDialogProcessEndIcon #fIcon
Ds0 f11 actionDecl 'ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData out;
' #txt
Ds0 f11 actionTable 'out=in;
' #txt
Ds0 f11 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

Boolean message = FacesContext.getCurrentInstance().getMessageList().size() >= 1 ? true : false;

// out.showDialog = message ? true : false;
if(message)
{
	out.showDialog = true;
}
else
{
	out.showDialog = false;
	ivy.log.debug("Item updated: {0}", in.selectedScore);
}' #txt
Ds0 f11 type ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData #txt
Ds0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Log</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f11 168 234 112 44 -10 -8 #rect
Ds0 f11 @|StepIcon #fIcon
Ds0 f10 expr out #txt
Ds0 f10 280 256 339 256 #arcP
Ds0 f12 expr out #txt
Ds0 f12 109 256 168 256 #arcP
Ds0 f8 guid 153D21AB2BFC4D05 #txt
Ds0 f8 type ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData #txt
Ds0 f8 actionDecl 'ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData out;
' #txt
Ds0 f8 actionTable 'out=in;
' #txt
Ds0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
    </language>
</elementInfo>
' #txt
Ds0 f8 83 243 26 26 -13 12 #rect
Ds0 f8 @|RichDialogProcessStartIcon #fIcon
Ds0 f15 expr out #txt
Ds0 f15 106 344 224 278 #arcP
Ds0 f13 guid 15539C6CAD8ECE82 #txt
Ds0 f13 type ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData #txt
Ds0 f13 method update() #txt
Ds0 f13 disableUIEvents false #txt
Ds0 f13 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f13 outParameterDecl '<> result;
' #txt
Ds0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ds0 f13 83 339 26 26 -23 12 #rect
Ds0 f13 @|RichDialogMethodStartIcon #fIcon
>Proto Ds0 .type ch.ivyteam.htmldialog.demo.output.DataTableDemo.DataTableDemoData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f0 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f6 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f8 mainOut f12 tail #connect
Ds0 f12 head f11 mainIn #connect
Ds0 f11 mainOut f10 tail #connect
Ds0 f10 head f9 mainIn #connect
Ds0 f13 mainOut f15 tail #connect
Ds0 f15 head f11 mainIn #connect
