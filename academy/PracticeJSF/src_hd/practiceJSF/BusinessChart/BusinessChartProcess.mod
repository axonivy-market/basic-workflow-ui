[Ivy]
[>Created: Fri Oct 09 13:55:32 CEST 2015]
15048256D741AFA5 3.17 #module
>Proto >Proto Collection #zClass
Bs0 BusinessChartProcess Big #zClass
Bs0 RD #cInfo
Bs0 #process
Bs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Bs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Bs0 @TextInP .resExport .resExport #zField
Bs0 @TextInP .type .type #zField
Bs0 @TextInP .processKind .processKind #zField
Bs0 @AnnotationInP-0n ai ai #zField
Bs0 @MessageFlowInP-0n messageIn messageIn #zField
Bs0 @MessageFlowOutP-0n messageOut messageOut #zField
Bs0 @TextInP .xml .xml #zField
Bs0 @TextInP .responsibility .responsibility #zField
Bs0 @RichDialogInitStart f0 '' #zField
Bs0 @RichDialogProcessEnd f1 '' #zField
Bs0 @RichDialogProcessStart f3 '' #zField
Bs0 @RichDialogEnd f4 '' #zField
Bs0 @PushWFArc f5 '' #zField
Bs0 @GridStep f6 '' #zField
Bs0 @PushWFArc f7 '' #zField
Bs0 @PushWFArc f2 '' #zField
>Proto Bs0 Bs0 BusinessChartProcess #zField
Bs0 f0 guid 15048256D83C8042 #txt
Bs0 f0 type practiceJSF.BusinessChart.BusinessChartData #txt
Bs0 f0 method start(practiceJSF.Data) #txt
Bs0 f0 disableUIEvents true #txt
Bs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<practiceJSF.Data data> param = methodEvent.getInputArguments();
' #txt
Bs0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Bs0 f0 outParameterDecl '<> result;
' #txt
Bs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
    </language>
</elementInfo>
' #txt
Bs0 f0 83 51 26 26 -29 15 #rect
Bs0 f0 @|RichDialogInitStartIcon #fIcon
Bs0 f1 type practiceJSF.BusinessChart.BusinessChartData #txt
Bs0 f1 339 51 26 26 0 12 #rect
Bs0 f1 @|RichDialogProcessEndIcon #fIcon
Bs0 f3 guid 15048256D93600F0 #txt
Bs0 f3 type practiceJSF.BusinessChart.BusinessChartData #txt
Bs0 f3 actionDecl 'practiceJSF.BusinessChart.BusinessChartData out;
' #txt
Bs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Bs0 f3 83 147 26 26 -15 12 #rect
Bs0 f3 @|RichDialogProcessStartIcon #fIcon
Bs0 f4 type practiceJSF.BusinessChart.BusinessChartData #txt
Bs0 f4 guid 15048256D9360825 #txt
Bs0 f4 211 147 26 26 0 12 #rect
Bs0 f4 @|RichDialogEndIcon #fIcon
Bs0 f5 expr out #txt
Bs0 f5 109 160 211 160 #arcP
Bs0 f6 actionDecl 'practiceJSF.BusinessChart.BusinessChartData out;
' #txt
Bs0 f6 actionTable 'out=in;
out.chart.animate=true;
out.chart.barMargin=10;
out.chart.legendPosition="se";
out.chart.seriesColors="FF3240, 3C70FF";
out.chart.shadow=true;
' #txt
Bs0 f6 actionCode 'import org.primefaces.model.chart.HorizontalBarChartModel;
import org.primefaces.model.chart.ChartSeries;

out.chart = new HorizontalBarChartModel();
ChartSeries s = new ChartSeries();
s.setLabel("something");

s.set("2008", 120);
s.set("2009", 150);
s.set("2010", 120);
s.set("2011", 150);
s.set("2012", 120);
out.chart.addSeries(s);
			
ChartSeries l = new ChartSeries();
l.setLabel("else");
l.set("2008", 130);
l.set("2009", 160);
l.set("2010", 130);
l.set("2011", 160);
l.set("2012", 130);
out.chart.addSeries(l);

out.chart.animate;
out.chart.barMargin= 10;
out.chart.legendPosition="se";
out.chart.shadow;
out.chart.seriesColors= "FF3240,3C70FF";
out.chart.title= "A Bar Chart";' #txt
Bs0 f6 type practiceJSF.BusinessChart.BusinessChartData #txt
Bs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Inscription</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f6 168 42 112 44 -28 -8 #rect
Bs0 f6 @|StepIcon #fIcon
Bs0 f7 expr out #txt
Bs0 f7 109 64 168 64 #arcP
Bs0 f2 expr out #txt
Bs0 f2 280 64 339 64 #arcP
>Proto Bs0 .type practiceJSF.BusinessChart.BusinessChartData #txt
>Proto Bs0 .processKind HTML_DIALOG #txt
>Proto Bs0 -8 -8 16 16 16 26 #rect
>Proto Bs0 '' #fIcon
Bs0 f3 mainOut f5 tail #connect
Bs0 f5 head f4 mainIn #connect
Bs0 f0 mainOut f7 tail #connect
Bs0 f7 head f6 mainIn #connect
Bs0 f6 mainOut f2 tail #connect
Bs0 f2 head f1 mainIn #connect
