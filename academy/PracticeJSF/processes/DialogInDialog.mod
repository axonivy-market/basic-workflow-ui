[Ivy]
[>Created: Thu Oct 08 14:56:54 CEST 2015]
15042C174BA9CA45 3.17 #module
>Proto >Proto Collection #zClass
Dg0 DialogInDialog Big #zClass
Dg0 B #cInfo
Dg0 #process
Dg0 @TextInP .resExport .resExport #zField
Dg0 @TextInP .type .type #zField
Dg0 @TextInP .processKind .processKind #zField
Dg0 @AnnotationInP-0n ai ai #zField
Dg0 @MessageFlowInP-0n messageIn messageIn #zField
Dg0 @MessageFlowOutP-0n messageOut messageOut #zField
Dg0 @TextInP .xml .xml #zField
Dg0 @TextInP .responsibility .responsibility #zField
Dg0 @StartRequest f0 '' #zField
Dg0 @EndTask f1 '' #zField
Dg0 @RichDialog f3 '' #zField
Dg0 @PushWFArc f2 '' #zField
Dg0 @PushWFArc f4 '' #zField
>Proto Dg0 Dg0 DialogInDialog #zField
Dg0 f0 outLink start.ivp #txt
Dg0 f0 type practiceJSF.DialogInDialogData #txt
Dg0 f0 inParamDecl '<> param;' #txt
Dg0 f0 actionDecl 'practiceJSF.DialogInDialogData out;
' #txt
Dg0 f0 guid 15042C174BFF07E3 #txt
Dg0 f0 requestEnabled true #txt
Dg0 f0 triggerEnabled false #txt
Dg0 f0 callSignature start() #txt
Dg0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Dg0 f0 @C|.responsibility Everybody #txt
Dg0 f0 81 49 30 30 -21 17 #rect
Dg0 f0 @|StartRequestIcon #fIcon
Dg0 f1 type practiceJSF.DialogInDialogData #txt
Dg0 f1 361 49 30 30 0 15 #rect
Dg0 f1 @|EndIcon #fIcon
Dg0 f3 targetWindow NEW:card: #txt
Dg0 f3 targetDisplay TOP #txt
Dg0 f3 richDialogId practiceJSF.ParentDialog #txt
Dg0 f3 startMethod start() #txt
Dg0 f3 type practiceJSF.DialogInDialogData #txt
Dg0 f3 requestActionDecl '<> param;' #txt
Dg0 f3 responseActionDecl 'practiceJSF.DialogInDialogData out;
' #txt
Dg0 f3 windowConfiguration '* ' #txt
Dg0 f3 isAsynch false #txt
Dg0 f3 isInnerRd false #txt
Dg0 f3 userContext '* ' #txt
Dg0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DialogInDialogComponent</name>
        <nameStyle>23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dg0 f3 168 42 160 44 -73 -8 #rect
Dg0 f3 @|RichDialogIcon #fIcon
Dg0 f2 expr out #txt
Dg0 f2 328 64 361 64 #arcP
Dg0 f4 expr out #txt
Dg0 f4 111 64 168 64 #arcP
>Proto Dg0 .type practiceJSF.DialogInDialogData #txt
>Proto Dg0 .processKind NORMAL #txt
>Proto Dg0 0 0 32 24 18 0 #rect
>Proto Dg0 @|BIcon #fIcon
Dg0 f3 mainOut f2 tail #connect
Dg0 f2 head f1 mainIn #connect
Dg0 f0 mainOut f4 tail #connect
Dg0 f4 head f3 mainIn #connect
