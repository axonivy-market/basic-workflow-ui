[Ivy]
[>Created: Tue Dec 07 14:21:28 CET 2010]
12CC0E82F08AE5F6 3.13 #module
>Proto >Proto Collection #zClass
Ss0 SeparatorProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogInitStart f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @RichDialogMethodStart f5 '' #zField
Ss0 @RichDialogProcessEnd f6 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @RichDialogMethodStart f8 '' #zField
Ss0 @PushWFArc f9 '' #zField
>Proto Ss0 Ss0 SeparatorProcess #zField
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 guid 12CC0E82FB5EB295 #txt
Ss0 f0 type ch.ivyteam.ivy.addons.common.technical.Separator.SeparatorData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 54 38 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.addons.common.technical.Separator.SeparatorData #txt
Ss0 f1 54 142 20 20 13 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f2 expr out #txt
Ss0 f2 64 58 64 142 #arcP
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 guid 12CC0FCAF879EE9E #txt
Ss0 f3 type ch.ivyteam.ivy.addons.common.technical.Separator.SeparatorData #txt
Ss0 f3 method start(String) #txt
Ss0 f3 disableUIEvents true #txt
Ss0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String separatorText> param = methodEvent.getInputArguments();
' #txt
Ss0 f3 outParameterDecl '<> result;
' #txt
Ss0 f3 118 38 20 20 13 0 #rect
Ss0 f3 @|RichDialogInitStartIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 128 58 73 150 #arcP
Ss0 f4 1 128 144 #addKink
Ss0 f4 0 0.8702962716199516 0 0 #arcLabel
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getSeparatorText()</name>
        <nameStyle>18,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 guid 12CC0FCE8FFC306F #txt
Ss0 f5 type ch.ivyteam.ivy.addons.common.technical.Separator.SeparatorData #txt
Ss0 f5 method getSeparatorText() #txt
Ss0 f5 disableUIEvents false #txt
Ss0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f5 outParameterDecl '<java.lang.String separatorText> result;
' #txt
Ss0 f5 outActionCode 'result.separatorText = in.separatorText;' #txt
Ss0 f5 246 38 20 20 13 0 #rect
Ss0 f5 @|RichDialogMethodStartIcon #fIcon
Ss0 f6 type ch.ivyteam.ivy.addons.common.technical.Separator.SeparatorData #txt
Ss0 f6 246 142 20 20 13 0 #rect
Ss0 f6 @|RichDialogProcessEndIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 256 58 256 142 #arcP
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setSeparatorText(String)</name>
        <nameStyle>24,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 guid 12CC0FD4296999C8 #txt
Ss0 f8 type ch.ivyteam.ivy.addons.common.technical.Separator.SeparatorData #txt
Ss0 f8 method setSeparatorText(String) #txt
Ss0 f8 disableUIEvents false #txt
Ss0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String separatorText> param = methodEvent.getInputArguments();
' #txt
Ss0 f8 inActionCode 'out.separatorText = param.separatorText;' #txt
Ss0 f8 outParameterDecl '<> result;
' #txt
Ss0 f8 390 38 20 20 13 0 #rect
Ss0 f8 @|RichDialogMethodStartIcon #fIcon
Ss0 f9 expr out #txt
Ss0 f9 400 58 265 151 #arcP
Ss0 f9 1 400 144 #addKink
Ss0 f9 1 0.16384527372056767 0 0 #arcLabel
>Proto Ss0 .rdData2UIAction 'panel.separatorLabel.text=in.separatorText;
' #txt
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>219</swimlaneSize>
    <swimlaneSize>360</swimlaneSize>
    <swimlaneColor>-16724788</swimlaneColor>
    <swimlaneColor>-16751002</swimlaneColor>
</elementInfo>
' #txt
>Proto Ss0 .type ch.ivyteam.ivy.addons.common.technical.Separator.SeparatorData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f3 mainOut f4 tail #connect
Ss0 f4 head f1 mainIn #connect
Ss0 f5 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f8 mainOut f9 tail #connect
Ss0 f9 head f6 mainIn #connect