[Ivy]
[>Created: Thu Oct 08 16:02:12 CEST 2015]
1504796996D3A930 3.17 #module
>Proto >Proto Collection #zClass
Ar0 AdvancedInputFormular Big #zClass
Ar0 B #cInfo
Ar0 #process
Ar0 @TextInP .resExport .resExport #zField
Ar0 @TextInP .type .type #zField
Ar0 @TextInP .processKind .processKind #zField
Ar0 @AnnotationInP-0n ai ai #zField
Ar0 @MessageFlowInP-0n messageIn messageIn #zField
Ar0 @MessageFlowOutP-0n messageOut messageOut #zField
Ar0 @TextInP .xml .xml #zField
Ar0 @TextInP .responsibility .responsibility #zField
Ar0 @StartRequest f0 '' #zField
Ar0 @EndTask f1 '' #zField
Ar0 @RichDialog f3 '' #zField
Ar0 @PushWFArc f4 '' #zField
Ar0 @PushWFArc f2 '' #zField
>Proto Ar0 Ar0 AdvancedInputFormular #zField
Ar0 f0 outLink start.ivp #txt
Ar0 f0 type practiceJSF.AdvancedInputFormularData #txt
Ar0 f0 inParamDecl '<> param;' #txt
Ar0 f0 actionDecl 'practiceJSF.AdvancedInputFormularData out;
' #txt
Ar0 f0 guid 15047969977F7D22 #txt
Ar0 f0 requestEnabled true #txt
Ar0 f0 triggerEnabled false #txt
Ar0 f0 callSignature start() #txt
Ar0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ar0 f0 @C|.responsibility Everybody #txt
Ar0 f0 81 49 30 30 -21 17 #rect
Ar0 f0 @|StartRequestIcon #fIcon
Ar0 f1 type practiceJSF.AdvancedInputFormularData #txt
Ar0 f1 337 49 30 30 0 15 #rect
Ar0 f1 @|EndIcon #fIcon
Ar0 f3 targetWindow NEW:card: #txt
Ar0 f3 targetDisplay TOP #txt
Ar0 f3 richDialogId practiceJSF.AvancedInputForm #txt
Ar0 f3 startMethod start() #txt
Ar0 f3 type practiceJSF.AdvancedInputFormularData #txt
Ar0 f3 requestActionDecl '<> param;' #txt
Ar0 f3 responseActionDecl 'practiceJSF.AdvancedInputFormularData out;
' #txt
Ar0 f3 windowConfiguration '* ' #txt
Ar0 f3 isAsynch false #txt
Ar0 f3 isInnerRd false #txt
Ar0 f3 userContext '* ' #txt
Ar0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>AdvancedInputForm</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ar0 f3 160 42 128 44 -54 -8 #rect
Ar0 f3 @|RichDialogIcon #fIcon
Ar0 f4 expr out #txt
Ar0 f4 111 64 160 64 #arcP
Ar0 f2 expr out #txt
Ar0 f2 288 64 337 64 #arcP
>Proto Ar0 .type practiceJSF.AdvancedInputFormularData #txt
>Proto Ar0 .processKind NORMAL #txt
>Proto Ar0 0 0 32 24 18 0 #rect
>Proto Ar0 @|BIcon #fIcon
Ar0 f0 mainOut f4 tail #connect
Ar0 f4 head f3 mainIn #connect
Ar0 f3 mainOut f2 tail #connect
Ar0 f2 head f1 mainIn #connect
