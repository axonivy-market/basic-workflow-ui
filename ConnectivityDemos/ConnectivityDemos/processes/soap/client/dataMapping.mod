[Ivy]
1605A38503199ADB 3.23 #module
>Proto >Proto Collection #zClass
dg0 dataMapping Big #zClass
dg0 B #cInfo
dg0 #process
dg0 @TextInP .resExport .resExport #zField
dg0 @TextInP .type .type #zField
dg0 @TextInP .processKind .processKind #zField
dg0 @AnnotationInP-0n ai ai #zField
dg0 @MessageFlowInP-0n messageIn messageIn #zField
dg0 @MessageFlowOutP-0n messageOut messageOut #zField
dg0 @TextInP .xml .xml #zField
dg0 @TextInP .responsibility .responsibility #zField
dg0 @StartRequest f0 '' #zField
dg0 @EndTask f1 '' #zField
dg0 @WSElement f3 '' #zField
dg0 @PushWFArc f4 '' #zField
dg0 @GridStep f5 '' #zField
dg0 @PushWFArc f6 '' #zField
dg0 @PushWFArc f2 '' #zField
dg0 @StartRequest f7 '' #zField
dg0 @WSElement f8 '' #zField
dg0 @PushWFArc f9 '' #zField
dg0 @EndTask f10 '' #zField
dg0 @GridStep f12 '' #zField
dg0 @PushWFArc f13 '' #zField
dg0 @PushWFArc f11 '' #zField
>Proto dg0 dg0 dataMapping #zField
dg0 f0 outLink resolveToCache.ivp #txt
dg0 f0 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f0 inParamDecl '<> param;' #txt
dg0 f0 actionDecl 'com.axonivy.connectivity.soap.DataMappingData out;
' #txt
dg0 f0 guid 1605A38503C283B0 #txt
dg0 f0 requestEnabled true #txt
dg0 f0 triggerEnabled false #txt
dg0 f0 callSignature resolveToCache() #txt
dg0 f0 persist false #txt
dg0 f0 startName '9.1.1 read remote result to cache' #txt
dg0 f0 startDescription 'Caches the result of a WebService invocation as the we do not expect the value to change.' #txt
dg0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
dg0 f0 caseData businessCase.attach=true #txt
dg0 f0 showInStartList 1 #txt
dg0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>resolveToCache.ivp</name>
        <nameStyle>18,5,7
</nameStyle>
        <desc>Caches the result of a remote WebService invocation.
Only the first execution will fire an HTTP request over the network. 
Follow up executions will simply consume the first result from the cache.</desc>
    </language>
</elementInfo>
' #txt
dg0 f0 @C|.responsibility Everybody #txt
dg0 f0 81 49 30 30 -60 17 #rect
dg0 f0 @|StartRequestIcon #fIcon
dg0 f1 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f1 497 49 30 30 0 15 #rect
dg0 f1 @|EndIcon #fIcon
dg0 f3 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f3 actionDecl 'com.axonivy.connectivity.soap.DataMappingData out;
' #txt
dg0 f3 actionTable 'out=in;
out.time=wsResponse;
' #txt
dg0 f3 cache '{/cache true /invalidation false /scope 2 /groupname "\"remoteTime\""/invalidation_time_group ""/lifetime_group "0"/identifier "\"local\""/invalidation_time_entry ""/lifetime_entry "0"}' #txt
dg0 f3 clientId 162B97C859B22CA3 #txt
dg0 f3 port SampleWebServiceSoap12 #txt
dg0 f3 operation GetCurrentTime #txt
dg0 f3 returningObjectList '[]' #txt
dg0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>resolve 
remote time</name>
    </language>
</elementInfo>
' #txt
dg0 f3 168 42 112 44 -38 -15 #rect
dg0 f3 @|WebServiceIcon #fIcon
dg0 f4 expr out #txt
dg0 f4 111 64 168 64 #arcP
dg0 f5 actionDecl 'com.axonivy.connectivity.soap.DataMappingData out;
' #txt
dg0 f5 actionTable 'out=in;
' #txt
dg0 f5 actionCode 'ivy.log.info("the time on the remote system is "+in.time);
' #txt
dg0 f5 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log time</name>
    </language>
</elementInfo>
' #txt
dg0 f5 328 42 112 44 -25 -7 #rect
dg0 f5 @|StepIcon #fIcon
dg0 f6 expr out #txt
dg0 f6 280 64 328 64 #arcP
dg0 f2 expr out #txt
dg0 f2 440 64 497 64 #arcP
dg0 f7 outLink mapComplexData.ivp #txt
dg0 f7 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f7 inParamDecl '<> param;' #txt
dg0 f7 actionDecl 'com.axonivy.connectivity.soap.DataMappingData out;
' #txt
dg0 f7 guid 1624D3C2479A8CBB #txt
dg0 f7 requestEnabled true #txt
dg0 f7 triggerEnabled false #txt
dg0 f7 callSignature mapComplexData() #txt
dg0 f7 persist false #txt
dg0 f7 startName '9.1.2 map complex data' #txt
dg0 f7 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
dg0 f7 caseData businessCase.attach=true #txt
dg0 f7 showInStartList 1 #txt
dg0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>mapComplexData.ivp</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f7 @C|.responsibility Everybody #txt
dg0 f7 81 137 30 30 -59 17 #rect
dg0 f7 @|StartRequestIcon #fIcon
dg0 f8 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f8 actionDecl 'com.axonivy.connectivity.soap.DataMappingData out;
' #txt
dg0 f8 actionTable 'out=in;
out.sunrise=wsResponse;
' #txt
dg0 f8 timeout 0 #txt
dg0 f8 beanConfig "" #txt
dg0 f8 clientId 1624D42B214263C5 #txt
dg0 f8 port SunSetRiseServiceSoap12 #txt
dg0 f8 operation GetSunSetRiseTime #txt
dg0 f8 inputParams 'l.latitude=47.166167;
l.longitude=8.515495;
' #txt
dg0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get sunrise time&#xD;
for Zug, Switzerland</name>
    </language>
</elementInfo>
' #txt
dg0 f8 160 130 128 44 -46 -16 #rect
dg0 f8 @|WebServiceIcon #fIcon
dg0 f9 expr out #txt
dg0 f9 111 152 160 152 #arcP
dg0 f10 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f10 497 137 30 30 0 15 #rect
dg0 f10 @|EndIcon #fIcon
dg0 f12 actionDecl 'com.axonivy.connectivity.soap.DataMappingData out;
' #txt
dg0 f12 actionTable 'out=in;
' #txt
dg0 f12 actionCode 'import java.text.SimpleDateFormat;
import java.util.TimeZone;
import java.util.Calendar;

Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
calendar.set(Calendar.HOUR_OF_DAY, 0);
calendar.add(Calendar.HOUR_OF_DAY, in.sunrise.sunRiseTime as Integer);
calendar.set(Calendar.MINUTE, (in.sunrise.sunRiseTime * 60) % 60);
calendar.set(Calendar.SECOND, (in.sunrise.sunRiseTime * 3600) % 3600);

SimpleDateFormat fmt = new SimpleDateFormat();
fmt.setTimeZone(TimeZone.getTimeZone("Europe/Paris")); 

ivy.log.info("Sunrise time in Zug, Switzerland: " + fmt.format(calendar.getTime() as java.util.Date));' #txt
dg0 f12 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log sunrise time</name>
    </language>
</elementInfo>
' #txt
dg0 f12 328 130 112 44 -44 -8 #rect
dg0 f12 @|StepIcon #fIcon
dg0 f13 expr out #txt
dg0 f13 288 152 328 152 #arcP
dg0 f11 expr out #txt
dg0 f11 440 152 497 152 #arcP
>Proto dg0 .type com.axonivy.connectivity.soap.DataMappingData #txt
>Proto dg0 .processKind NORMAL #txt
>Proto dg0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto dg0 0 0 32 24 18 0 #rect
>Proto dg0 @|BIcon #fIcon
dg0 f0 mainOut f4 tail #connect
dg0 f4 head f3 mainIn #connect
dg0 f3 mainOut f6 tail #connect
dg0 f6 head f5 mainIn #connect
dg0 f5 mainOut f2 tail #connect
dg0 f2 head f1 mainIn #connect
dg0 f7 mainOut f9 tail #connect
dg0 f9 head f8 mainIn #connect
dg0 f8 mainOut f13 tail #connect
dg0 f13 head f12 mainIn #connect
dg0 f12 mainOut f11 tail #connect
dg0 f11 head f10 mainIn #connect
