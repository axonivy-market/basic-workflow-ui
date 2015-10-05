[Ivy]
[>Created: Mon Oct 05 11:12:49 CEST 2015]
150285E8A4FA463A 3.17 #module
>Proto >Proto Collection #zClass
Ss0 SelectionWidgets Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @StartRequest f0 '' #zField
Ss0 @EndTask f1 '' #zField
Ss0 @RichDialog f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @PushWFArc f2 '' #zField
>Proto Ss0 Ss0 SelectionWidgets #zField
Ss0 f0 outLink start.ivp #txt
Ss0 f0 type practiceJSF.SelectionWidgetsData #txt
Ss0 f0 inParamDecl '<> param;' #txt
Ss0 f0 actionDecl 'practiceJSF.SelectionWidgetsData out;
' #txt
Ss0 f0 guid 150285E8A5BAC155 #txt
Ss0 f0 requestEnabled true #txt
Ss0 f0 triggerEnabled false #txt
Ss0 f0 callSignature start() #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 @C|.responsibility Everybody #txt
Ss0 f0 81 49 30 30 -21 17 #rect
Ss0 f0 @|StartRequestIcon #fIcon
Ss0 f1 type practiceJSF.SelectionWidgetsData #txt
Ss0 f1 337 49 30 30 0 15 #rect
Ss0 f1 @|EndIcon #fIcon
Ss0 f3 targetWindow NEW:card: #txt
Ss0 f3 targetDisplay TOP #txt
Ss0 f3 richDialogId practiceJSF.RegistrationForm #txt
Ss0 f3 startMethod start(practiceJSF.ColorOrder) #txt
Ss0 f3 type practiceJSF.SelectionWidgetsData #txt
Ss0 f3 requestActionDecl '<practiceJSF.ColorOrder preSelection> param;' #txt
Ss0 f3 responseActionDecl 'practiceJSF.SelectionWidgetsData out;
' #txt
Ss0 f3 responseMappingAction 'out.colorOrder=result.colorOrder;
' #txt
Ss0 f3 windowConfiguration '* ' #txt
Ss0 f3 isAsynch false #txt
Ss0 f3 isInnerRd false #txt
Ss0 f3 userContext '* ' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RegistrationForm</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 168 42 112 44 -48 -8 #rect
Ss0 f3 @|RichDialogIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 111 64 168 64 #arcP
Ss0 f2 expr out #txt
Ss0 f2 280 64 337 64 #arcP
Ss0 f2 0 0.8198198657861884 0 0 #arcLabel
>Proto Ss0 .type practiceJSF.SelectionWidgetsData #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f0 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
Ss0 f3 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
