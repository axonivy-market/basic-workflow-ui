[Ivy]
1504277D2E48A3F7 7.5.0 #module
>Proto >Proto Collection #zClass
Kg0 ContactSensingTemplate Big #zClass
Kg0 B #cInfo
Kg0 #process
Kg0 @TextInP .type .type #zField
Kg0 @TextInP .processKind .processKind #zField
Kg0 @AnnotationInP-0n ai ai #zField
Kg0 @MessageFlowInP-0n messageIn messageIn #zField
Kg0 @MessageFlowOutP-0n messageOut messageOut #zField
Kg0 @TextInP .xml .xml #zField
Kg0 @TextInP .responsibility .responsibility #zField
Kg0 @StartRequest f0 '' #zField
Kg0 @EndTask f1 '' #zField
Kg0 @UserDialog f3 '' #zField
Kg0 @PushWFArc f4 '' #zField
Kg0 @PushWFArc f2 '' #zField
>Proto Kg0 Kg0 ContactSensingTemplate #zField
Kg0 f0 outLink start.ivp #txt
Kg0 f0 inParamDecl '<> param;' #txt
Kg0 f0 requestEnabled true #txt
Kg0 f0 triggerEnabled false #txt
Kg0 f0 callSignature start() #txt
Kg0 f0 persist false #txt
Kg0 f0 startName '09. Contact sensing with modified template' #txt
Kg0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Kg0 f0 showInStartList 1 #txt
Kg0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Kg0 f0 @C|.responsibility Everybody #txt
Kg0 f0 81 49 30 30 -21 17 #rect
Kg0 f0 @|StartRequestIcon #fIcon
Kg0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>End</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Kg0 f1 337 49 30 30 -11 17 #rect
Kg0 f1 @|EndIcon #fIcon
Kg0 f3 dialogId practiceJSF.ContactSensingTemplate #txt
Kg0 f3 startMethod start(practiceJSF.Contact,practiceJSF.Company) #txt
Kg0 f3 requestActionDecl '<practiceJSF.Contact contact,practiceJSF.Company company> param;' #txt
Kg0 f3 requestMappingAction 'param.contact=in.contact;
param.company=in.company;
' #txt
Kg0 f3 responseActionDecl 'practiceJSF.ContactData out;
' #txt
Kg0 f3 responseMappingAction 'out=in;
out.company=result.company;
out.contact=result.contact;
' #txt
Kg0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Contact sensing</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Kg0 f3 168 42 112 44 -45 -8 #rect
Kg0 f3 @|UserDialogIcon #fIcon
Kg0 f4 expr out #txt
Kg0 f4 111 64 168 64 #arcP
Kg0 f2 expr out #txt
Kg0 f2 280 64 337 64 #arcP
>Proto Kg0 .type practiceJSF.ContactData #txt
>Proto Kg0 .processKind NORMAL #txt
>Proto Kg0 0 0 32 24 18 0 #rect
>Proto Kg0 @|BIcon #fIcon
Kg0 f0 mainOut f4 tail #connect
Kg0 f4 head f3 mainIn #connect
Kg0 f3 mainOut f2 tail #connect
Kg0 f2 head f1 mainIn #connect
