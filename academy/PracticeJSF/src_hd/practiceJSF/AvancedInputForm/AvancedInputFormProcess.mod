[Ivy]
[>Created: Thu Oct 08 16:46:34 CEST 2015]
15047A2F77713FB5 3.17 #module
>Proto >Proto Collection #zClass
As0 AvancedInputFormProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @RichDialogProcessStart f3 '' #zField
As0 @RichDialogEnd f4 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @RichDialogMethodStart f6 '' #zField
As0 @RichDialogProcessEnd f7 '' #zField
As0 @GridStep f9 '' #zField
As0 @PushWFArc f10 '' #zField
As0 @PushWFArc f8 '' #zField
As0 @RichDialogProcessStart f11 '' #zField
As0 @RichDialogProcessEnd f12 '' #zField
As0 @PushWFArc f13 '' #zField
>Proto As0 As0 AvancedInputFormProcess #zField
As0 f0 guid 15047A2F78E117BE #txt
As0 f0 type practiceJSF.AvancedInputForm.AvancedInputFormData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -16 15 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type practiceJSF.AvancedInputForm.AvancedInputFormData #txt
As0 f1 211 51 26 26 0 12 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f2 expr out #txt
As0 f2 109 64 211 64 #arcP
As0 f3 guid 15047A2F795B9BD5 #txt
As0 f3 type practiceJSF.AvancedInputForm.AvancedInputFormData #txt
As0 f3 actionDecl 'practiceJSF.AvancedInputForm.AvancedInputFormData out;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
As0 f3 83 147 26 26 -15 12 #rect
As0 f3 @|RichDialogProcessStartIcon #fIcon
As0 f4 type practiceJSF.AvancedInputForm.AvancedInputFormData #txt
As0 f4 guid 15047A2F79688482 #txt
As0 f4 211 147 26 26 0 12 #rect
As0 f4 @|RichDialogEndIcon #fIcon
As0 f5 expr out #txt
As0 f5 109 160 211 160 #arcP
As0 f6 guid 15047AA4FA55D799 #txt
As0 f6 type practiceJSF.AvancedInputForm.AvancedInputFormData #txt
As0 f6 method completeCountry(String) #txt
As0 f6 disableUIEvents false #txt
As0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String country> param = methodEvent.getInputArguments();
' #txt
As0 f6 outParameterDecl '<List<java.lang.String> matchingCountries> result;
' #txt
As0 f6 outParameterMapAction 'result.matchingCountries=in.matchingCountries;
' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>country(String)</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 83 243 26 26 -39 15 #rect
As0 f6 @|RichDialogMethodStartIcon #fIcon
As0 f7 type practiceJSF.AvancedInputForm.AvancedInputFormData #txt
As0 f7 339 243 26 26 0 12 #rect
As0 f7 @|RichDialogProcessEndIcon #fIcon
As0 f9 actionDecl 'practiceJSF.AvancedInputForm.AvancedInputFormData out;
' #txt
As0 f9 actionTable 'out=in;
' #txt
As0 f9 actionCode 'import java.util.Locale;

in.matchingCountries.clear();
for (Locale locale: Locale.getAvailableLocales())
{
	String country = locale.getDisplayCountry();
	if (country.contains(in.country))
	{
		if (!in.matchingCountries.contains(country))
		{
			in.matchingCountries.add(country);
	  }
  }
}' #txt
As0 f9 type practiceJSF.AvancedInputForm.AvancedInputFormData #txt
As0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Matching countries</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f9 168 234 112 44 -51 -8 #rect
As0 f9 @|StepIcon #fIcon
As0 f10 expr out #txt
As0 f10 109 256 168 256 #arcP
As0 f8 expr out #txt
As0 f8 280 256 339 256 #arcP
As0 f11 guid 15047DBFABC4949C #txt
As0 f11 type practiceJSF.AvancedInputForm.AvancedInputFormData #txt
As0 f11 actionDecl 'practiceJSF.AvancedInputForm.AvancedInputFormData out;
' #txt
As0 f11 actionTable 'out=in;
' #txt
As0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
    </language>
</elementInfo>
' #txt
As0 f11 83 339 26 26 -14 12 #rect
As0 f11 @|RichDialogProcessStartIcon #fIcon
As0 f12 type practiceJSF.AvancedInputForm.AvancedInputFormData #txt
As0 f12 211 339 26 26 0 12 #rect
As0 f12 @|RichDialogProcessEndIcon #fIcon
As0 f13 109 352 211 352 #arcP
>Proto As0 .type practiceJSF.AvancedInputForm.AvancedInputFormData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f3 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
As0 f6 mainOut f10 tail #connect
As0 f10 head f9 mainIn #connect
As0 f9 mainOut f8 tail #connect
As0 f8 head f7 mainIn #connect
As0 f11 mainOut f13 tail #connect
As0 f13 head f12 mainIn #connect
