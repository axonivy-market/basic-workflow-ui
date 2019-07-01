[Ivy]
15B1423713D828E3 3.26 #module
>Proto >Proto Collection #zClass
Ls0 LicenceComponentProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ls0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ls0 @TextInP .resExport .resExport #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @RichDialogInitStart f0 '' #zField
Ls0 @RichDialogProcessEnd f1 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @RichDialogProcessStart f3 '' #zField
Ls0 @RichDialogProcessEnd f4 '' #zField
Ls0 @RestClientCall f5 '' #zField
Ls0 @PushWFArc f6 '' #zField
Ls0 @PushWFArc f7 '' #zField
Ls0 @RichDialogProcessStart f8 '' #zField
Ls0 @GridStep f9 '' #zField
Ls0 @RichDialogProcessEnd f10 '' #zField
Ls0 @PushWFArc f11 '' #zField
Ls0 @PushWFArc f12 '' #zField
>Proto Ls0 Ls0 LicenceComponentProcess #zField
Ls0 f0 guid 15B14237163914A7 #txt
Ls0 f0 type com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData #txt
Ls0 f0 method start(com.axon.ivy.engine.config.SystemDatabaseSettings) #txt
Ls0 f0 disableUIEvents true #txt
Ls0 f0 inParameterDecl 'com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData out;
' #txt
Ls0 f0 inParameterMapAction 'out.renewLicenceData.settings=param.settings;
' #txt
Ls0 f0 inActionCode 'import ch.ivyteam.licence.SignedLicence;
import com.axon.ivy.engine.config.FocusSetter;
FocusSetter.setFocusOnLicenceTabNextStepButton();

int inDays = 86400;

if(SignedLicence.isInstalled() && !SignedLicence.isDemo())
{
	out.renewLicenceData.daysLeft = (SignedLicence.getValidUntil().getDate().toNumber() - new Date().toNumber())/inDays;
	if(out.renewLicenceData.daysLeft <= 30)
	{
		out.renewLicenceData.licenceWarning = "#e09494";
	}
} 

if(param.settings.getAdministratorManager().getAdministrators().size() != 0){
	out.renewLicenceData.renewEmail = param.settings.getAdministratorManager().getAdministrators().get(0).getEMailAddress();
}' #txt
Ls0 f0 outParameterDecl '<> result;
' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f0 84 52 24 24 -16 15 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 type com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData #txt
Ls0 f1 211 51 26 26 0 12 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
Ls0 f2 expr out #txt
Ls0 f2 108 64 211 64 #arcP
Ls0 f3 guid 16A68DC5B955AB88 #txt
Ls0 f3 type com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData #txt
Ls0 f3 actionDecl 'com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData out;
' #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>renewLicence</name>
    </language>
</elementInfo>
' #txt
Ls0 f3 83 243 26 26 -52 15 #rect
Ls0 f3 @|RichDialogProcessStartIcon #fIcon
Ls0 f4 type com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData #txt
Ls0 f4 307 243 26 26 0 12 #rect
Ls0 f4 @|RichDialogProcessEndIcon #fIcon
Ls0 f5 clientId b2bf970e-6e13-4762-a66a-a164dc2d10fd #txt
Ls0 f5 method JAX_RS #txt
Ls0 f5 bodyInputType ENTITY #txt
Ls0 f5 clientCode 'import org.apache.commons.lang3.StringUtils;
import java.util.Map;
import com.axon.ivy.engine.config.RenewLicence;
import com.axon.ivy.engine.config.UiModder;
import ch.ivyteam.licence.SignedLicence;
import javax.ws.rs.core.Response;
import java.io.FileOutputStream;
import java.util.Calendar;

java.io.File tempFile = java.nio.file.Files.createTempFile("test", ".lic").toFile();

FileOutputStream fos = new FileOutputStream(tempFile);
fos.write(SignedLicence.getLicenceContent().getBytes());
fos.flush();
fos.close();

Response response = RenewLicence.upload(client, tempFile, in.renewLicenceData.renewEmail);
if (response.getStatus() == 200)
{
	UiModder.addInfoMessage("Message", "Your request has been sent successfully");
	Calendar c = Calendar.getInstance().setTime(new Date()).add(Calendar.DATE, 4);
	in.renewLicenceData.renewDelayBool = true;
}
else if (response.getStatus() == 500)
{
	UiModder.addWarningMessage("Message", "There was some problem with the server. Please try again in a few minutes.");
}
else if (response.getStatus() == 406)
{
  UiModder.addErrorMessage("Message", "Sorry, your request already exists.");
}
else
{
	String str = response.readEntity(String.class) as String;
	String result = StringUtils.substringBetween(str, "errorMessage", "statusCode");
	UiModder.addErrorMessage("Message", "There was some problem sending your request: "+result);
}
tempFile.delete();' #txt
Ls0 f5 resultType java.lang.String #txt
Ls0 f5 clientErrorCode ivy:error:rest:client #txt
Ls0 f5 statusErrorCode ivy:error:rest:client #txt
Ls0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>request renew Licence</name>
    </language>
</elementInfo>
' #txt
Ls0 f5 128 234 160 44 -71 -7 #rect
Ls0 f5 @|RestClientCallIcon #fIcon
Ls0 f6 expr out #txt
Ls0 f6 109 256 128 256 #arcP
Ls0 f7 288 256 307 256 #arcP
Ls0 f8 guid 16AF92E90D5AD8A8 #txt
Ls0 f8 type com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData #txt
Ls0 f8 actionDecl 'com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData out;
' #txt
Ls0 f8 actionTable 'out=in;
' #txt
Ls0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setAdmin</name>
    </language>
</elementInfo>
' #txt
Ls0 f8 83 147 26 26 -52 15 #rect
Ls0 f8 @|RichDialogProcessStartIcon #fIcon
Ls0 f9 actionDecl 'com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData out;
' #txt
Ls0 f9 actionTable 'out=in;
' #txt
Ls0 f9 actionCode 'import ch.ivyteam.licence.SignedLicence;
import ch.ivyteam.ivy.security.Administrator;

if(in.renewLicenceData.settings.getAdministratorManager().getAdministrators().size() != 0)
{
in.renewLicenceData.renewEmail = in.renewLicenceData.settings.getAdministratorManager().getAdministrators().get(0).eMailAddress;
}
' #txt
Ls0 f9 type com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData #txt
Ls0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get mail from admin</name>
    </language>
</elementInfo>
' #txt
Ls0 f9 144 138 128 44 -61 -7 #rect
Ls0 f9 @|StepIcon #fIcon
Ls0 f10 type com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData #txt
Ls0 f10 307 147 26 26 0 12 #rect
Ls0 f10 @|RichDialogProcessEndIcon #fIcon
Ls0 f11 expr out #txt
Ls0 f11 109 160 144 160 #arcP
Ls0 f12 expr out #txt
Ls0 f12 272 160 307 160 #arcP
>Proto Ls0 .type com.axonivy.engine.config.ui.settings.component.LicenceComponent.LicenceComponentData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f3 mainOut f6 tail #connect
Ls0 f6 head f5 mainIn #connect
Ls0 f5 mainOut f7 tail #connect
Ls0 f7 head f4 mainIn #connect
Ls0 f8 mainOut f11 tail #connect
Ls0 f11 head f9 mainIn #connect
Ls0 f9 mainOut f12 tail #connect
Ls0 f12 head f10 mainIn #connect
