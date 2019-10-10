[Ivy]
1504CA82FB437EC0 7.5.0 #module
>Proto >Proto Collection #zClass
Ds0 DragAndDropDialogProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @UdInit f0 '' #zField
Ds0 @UdProcessEnd f1 '' #zField
Ds0 @UdEvent f3 '' #zField
Ds0 @UdExitEnd f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @UdProcessEnd f7 '' #zField
Ds0 @UdMethod f9 '' #zField
Ds0 @PushWFArc f10 '' #zField
Ds0 @GridStep f6 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @PushWFArc f2 '' #zField
>Proto Ds0 Ds0 DragAndDropDialogProcess #zField
Ds0 f0 guid 1504CA82FD267531 #txt
Ds0 f0 method start() #txt
Ds0 f0 inParameterDecl '<> param;' #txt
Ds0 f0 outParameterDecl '<> result;' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -16 15 #rect
Ds0 f0 @|UdInitIcon #fIcon
Ds0 f1 339 51 26 26 0 12 #rect
Ds0 f1 @|UdProcessEndIcon #fIcon
Ds0 f3 guid 1504CA82FDC57F38 #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 147 26 26 -15 12 #rect
Ds0 f3 @|UdEventIcon #fIcon
Ds0 f4 211 147 26 26 0 12 #rect
Ds0 f4 @|UdExitEndIcon #fIcon
Ds0 f5 expr out #txt
Ds0 f5 109 160 211 160 #arcP
Ds0 f7 211 243 26 26 0 12 #rect
Ds0 f7 @|UdProcessEndIcon #fIcon
Ds0 f9 guid 1504CCE0063427E0 #txt
Ds0 f9 method myDrop(org.primefaces.event.DragDropEvent) #txt
Ds0 f9 inParameterDecl '<org.primefaces.event.DragDropEvent DragDropEvent> param;' #txt
Ds0 f9 inActionCode 'String col = param.DragDropEvent.getData().toString();
out.selectedColors.add(col);
out.colors.remove(col);
' #txt
Ds0 f9 outParameterDecl '<> result;' #txt
Ds0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>myDrop(DragDropEvent)</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f9 83 243 26 26 -67 15 #rect
Ds0 f9 @|UdMethodIcon #fIcon
Ds0 f10 expr out #txt
Ds0 f10 109 256 211 256 #arcP
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode 'out.colors.add("red");
out.colors.add("green");
out.colors.add("limeGreen");
out.colors.add("blue");
out.colors.add("purple");
' #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Insription</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 168 42 112 44 -25 -8 #rect
Ds0 f6 @|StepIcon #fIcon
Ds0 f8 expr out #txt
Ds0 f8 109 64 168 64 #arcP
Ds0 f2 expr out #txt
Ds0 f2 280 64 339 64 #arcP
>Proto Ds0 .type practiceJSF.DragAndDropDialog.DragAndDropDialogData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f9 mainOut f10 tail #connect
Ds0 f10 head f7 mainIn #connect
Ds0 f0 mainOut f8 tail #connect
Ds0 f8 head f6 mainIn #connect
Ds0 f6 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
