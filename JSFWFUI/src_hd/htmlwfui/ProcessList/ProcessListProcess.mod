[Ivy]
[>Created: Mon Feb 25 13:33:57 CET 2013]
13A9BE7A5A0FCFD3 3.17 #module
>Proto >Proto Collection #zClass
Ps0 ProcessListProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @GridStep f20 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @GridStep f4 '' #zField
Ps0 @PushWFArc f5 '' #zField
Ps0 @PushWFArc f3 '' #zField
>Proto Ps0 Ps0 ProcessListProcess #zField
Ps0 f0 guid 13A9BE7A5EEDAE62 #txt
Ps0 f0 type htmlwfui.ProcessList.ProcessListData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 86 54 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type htmlwfui.ProcessList.ProcessListData #txt
Ps0 f1 86 214 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f20 actionDecl 'htmlwfui.ProcessList.ProcessListData out;
' #txt
Ps0 f20 actionTable 'out=in;
' #txt
Ps0 f20 actionCode 'import ch.ivyteam.ivy.workflow.IProcessStart;

for(IProcessStart s: ivy.session.getStartableProcessStarts())
{
		if(s.getName().length()>0)
		{
			out.starts.add(s);
		}	
}




' #txt
Ps0 f20 type htmlwfui.ProcessList.ProcessListData #txt
Ps0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect processstarts
</name>
        <nameStyle>22,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f20 78 100 36 24 24 -16 #rect
Ps0 f20 @|StepIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 96 74 96 100 #arcP
Ps0 f4 actionDecl 'htmlwfui.ProcessList.ProcessListData out;
' #txt
Ps0 f4 actionTable 'out=in;
' #txt
Ps0 f4 actionCode 'import ch.ivyteam.ivy.workflow.IProcessStart;
import htmlwfui.Start;

for(IProcessStart s: ivy.session.getStartableProcessStarts())
{
		if(s.getName().length()>0)
		{
			Start startDetail = new Start();
			startDetail.name = s.getName();
			startDetail.description = s.getDescription();
			startDetail.path = s.getFullRequestPath();
			out.startList.add(startDetail);
		}	
}' #txt
Ps0 f4 type htmlwfui.ProcessList.ProcessListData #txt
Ps0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>StartList</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f4 78 148 36 24 20 -2 #rect
Ps0 f4 @|StepIcon #fIcon
Ps0 f5 expr out #txt
Ps0 f5 96 124 96 148 #arcP
Ps0 f3 expr out #txt
Ps0 f3 96 172 96 214 #arcP
>Proto Ps0 .type htmlwfui.ProcessList.ProcessListData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f20 mainIn #connect
Ps0 f20 mainOut f5 tail #connect
Ps0 f5 head f4 mainIn #connect
Ps0 f4 mainOut f3 tail #connect
Ps0 f3 head f1 mainIn #connect
