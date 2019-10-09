[Ivy]
15048256D741AFA5 7.5.0 #module
>Proto >Proto Collection #zClass
Bs0 BusinessChartProcess Big #zClass
Bs0 RD #cInfo
Bs0 #process
Bs0 @TextInP .type .type #zField
Bs0 @TextInP .processKind .processKind #zField
Bs0 @AnnotationInP-0n ai ai #zField
Bs0 @MessageFlowInP-0n messageIn messageIn #zField
Bs0 @MessageFlowOutP-0n messageOut messageOut #zField
Bs0 @TextInP .xml .xml #zField
Bs0 @TextInP .responsibility .responsibility #zField
Bs0 @UdInit f0 '' #zField
Bs0 @UdProcessEnd f1 '' #zField
Bs0 @UdEvent f3 '' #zField
Bs0 @UdExitEnd f4 '' #zField
Bs0 @PushWFArc f5 '' #zField
Bs0 @GridStep f6 '' #zField
Bs0 @PushWFArc f7 '' #zField
Bs0 @PushWFArc f2 '' #zField
Bs0 @UdMethod f8 '' #zField
Bs0 @UdMethod f9 '' #zField
Bs0 @UdProcessEnd f10 '' #zField
Bs0 @UdProcessEnd f11 '' #zField
Bs0 @PushWFArc f12 '' #zField
Bs0 @PushWFArc f16 '' #zField
>Proto Bs0 Bs0 BusinessChartProcess #zField
Bs0 f0 guid 15048256D83C8042 #txt
Bs0 f0 method start(practiceJSF.Data) #txt
Bs0 f0 inParameterDecl '<practiceJSF.Data data> param;' #txt
Bs0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Bs0 f0 outParameterDecl '<> result;' #txt
Bs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
    </language>
</elementInfo>
' #txt
Bs0 f0 83 51 26 26 -29 15 #rect
Bs0 f0 @|UdInitIcon #fIcon
Bs0 f1 339 51 26 26 0 12 #rect
Bs0 f1 @|UdProcessEndIcon #fIcon
Bs0 f3 guid 15048256D93600F0 #txt
Bs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Bs0 f3 83 147 26 26 -15 12 #rect
Bs0 f3 @|UdEventIcon #fIcon
Bs0 f4 211 147 26 26 0 12 #rect
Bs0 f4 @|UdExitEndIcon #fIcon
Bs0 f5 expr out #txt
Bs0 f5 109 160 211 160 #arcP
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
s.setLabel("Product 1");

s.set("2008", 120);
s.set("2009", 150);
s.set("2010", 120);
s.set("2011", 150);
s.set("2012", 120);
out.chart.addSeries(s);
			
ChartSeries l = new ChartSeries();
l.setLabel("Product 2");
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
Bs0 f8 guid 1506B55239675734 #txt
Bs0 f8 method itemSelected(org.primefaces.event.ItemSelectEvent) #txt
Bs0 f8 inParameterDecl '<org.primefaces.event.ItemSelectEvent event> param;' #txt
Bs0 f8 inActionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_INFO,
"Item selected", "Item Index: " + param.event.getItemIndex() +
", Series Index:" + param.event.getSeriesIndex());

FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Bs0 f8 outParameterDecl '<> result;' #txt
Bs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>itemSelected(...)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f8 83 219 26 26 -52 15 #rect
Bs0 f8 @|UdMethodIcon #fIcon
Bs0 f8 -1|-1|-9671572 #nodeStyle
Bs0 f9 guid 1506B55239461076 #txt
Bs0 f9 method itemSelected(String) #txt
Bs0 f9 inParameterDecl '<String growl> param;' #txt
Bs0 f9 outParameterDecl '<> result;' #txt
Bs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>itemSelected(String)</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f9 83 283 26 26 -56 15 #rect
Bs0 f9 @|UdMethodIcon #fIcon
Bs0 f10 211 219 26 26 0 12 #rect
Bs0 f10 @|UdProcessEndIcon #fIcon
Bs0 f10 -1|-1|-9671572 #nodeStyle
Bs0 f11 211 283 26 26 0 12 #rect
Bs0 f11 @|UdProcessEndIcon #fIcon
Bs0 f12 expr out #txt
Bs0 f12 109 232 211 232 #arcP
Bs0 f16 109 296 211 296 #arcP
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
Bs0 f8 mainOut f12 tail #connect
Bs0 f12 head f10 mainIn #connect
Bs0 f9 mainOut f16 tail #connect
Bs0 f16 head f11 mainIn #connect
