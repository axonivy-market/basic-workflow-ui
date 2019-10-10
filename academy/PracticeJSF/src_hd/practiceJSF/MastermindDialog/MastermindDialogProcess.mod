[Ivy]
1506B9148CD67EC6 7.5.0 #module
>Proto >Proto Collection #zClass
Ds0 MastermindDialogProcess Big #zClass
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
Ds0 @UdProcessEnd f12 '' #zField
Ds0 @GridStep f14 '' #zField
Ds0 @UdEvent f11 '' #zField
Ds0 @GridStep f16 '' #zField
Ds0 @PushWFArc f17 '' #zField
Ds0 @PushWFArc f13 '' #zField
Ds0 @UdEvent f18 '' #zField
Ds0 @PushWFArc f19 '' #zField
Ds0 @Alternative f23 '' #zField
Ds0 @PushWFArc f24 '' #zField
Ds0 @PushWFArc f15 '' #zField
Ds0 @GridStep f25 '' #zField
Ds0 @PushWFArc f26 '' #zField
Ds0 @PushWFArc f27 '' #zField
>Proto Ds0 Ds0 MastermindDialogProcess #zField
Ds0 f0 guid 1504CA82FD267531 #txt
Ds0 f0 method start() #txt
Ds0 f0 inParameterDecl '<> param;' #txt
Ds0 f0 outParameterDecl '<> result;' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
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
Ds0 f6 actionCode 'import java.util.Collections;

out.colors.add("red");
out.colors.add("green");
out.colors.add("orange");
out.colors.add("blue");
out.colors.add("purple");

out.correctColors.add("purple");
out.correctColors.add("orange");
out.correctColors.add("red");
out.correctColors.add("blue");
out.correctColors.add("green");


Collections.shuffle(out.correctColors);' #txt
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
Ds0 f12 483 403 26 26 0 12 #rect
Ds0 f12 @|UdProcessEndIcon #fIcon
Ds0 f14 actionTable 'out=in;
' #txt
Ds0 f14 actionCode 'in.correctAmount=0;

for(int i = 0; i<in.correctColors.size(); i++)
{
	if(in.correctColors.get(i)==in.selectedColors.get(i))
	{
		in.correctAmount++;
	}
}
	
if(in.correctAmount==in.correctColors.size())
{
	in.correctionMessage="You won!";
}
else
{
	if(in.correctionMessage=="You won!")
	{
	  in.correctionMessage="";
	}
	
	in.correctionMessage += in.correctAmount.toString();

  String colorHtml = "";
  for(String color : in.selectedColors)
  {
		colorHtml += "<img src=\"/ivy/faces/javax.faces.resource/" + color + ".png?ln=xpertivy-2-htmlDialog-practiceJSF.MastermindDialog\" height=\"40px;\">";
	}

	if(in.correctAmount<=1)
  {
	  in.correctionMessage += " is correct (position): " + colorHtml + "<br />";
	}
	
	else
	{
		in.correctionMessage += " are correct (position): " + colorHtml + "<br />";
	}
}' #txt
Ds0 f14 security system #txt
Ds0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Compare colorlists</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f14 312 330 112 44 -52 -8 #rect
Ds0 f14 @|StepIcon #fIcon
Ds0 f11 guid 1506F92A226537B8 #txt
Ds0 f11 actionTable 'out=in;
' #txt
Ds0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>checkColor</name>
    </language>
</elementInfo>
' #txt
Ds0 f11 83 339 26 26 -31 12 #rect
Ds0 f11 @|UdEventIcon #fIcon
Ds0 f16 actionTable 'out=in;
' #txt
Ds0 f16 actionCode 'out.selectedColors.clear();
out.colors.clear();

out.colors.add("red");
out.colors.add("green");
out.colors.add("orange");
out.colors.add("blue");
out.colors.add("purple");' #txt
Ds0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Put elements back</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f16 312 394 112 44 -51 -8 #rect
Ds0 f16 @|StepIcon #fIcon
Ds0 f17 expr out #txt
Ds0 f17 368 374 368 394 #arcP
Ds0 f13 expr out #txt
Ds0 f13 424 416 483 416 #arcP
Ds0 f18 guid 150709EAD8E17143 #txt
Ds0 f18 actionTable 'out=in;
' #txt
Ds0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>revert</name>
    </language>
</elementInfo>
' #txt
Ds0 f18 83 443 26 26 -15 12 #rect
Ds0 f18 @|UdEventIcon #fIcon
Ds0 f19 expr out #txt
Ds0 f19 109 456 368 438 #arcP
Ds0 f19 1 368 456 #addKink
Ds0 f19 0 0.6240310650853516 0 0 #arcLabel
Ds0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>All colors
seleted?</name>
        <nameStyle>11,7
8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f23 192 336 32 32 -25 18 #rect
Ds0 f23 @|AlternativeIcon #fIcon
Ds0 f24 expr out #txt
Ds0 f24 109 352 192 352 #arcP
Ds0 f15 expr in #txt
Ds0 f15 outCond in.selectedColors.size()==in.correctColors.size() #txt
Ds0 f15 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f15 224 352 312 352 #arcP
Ds0 f25 actionTable 'out=in;
' #txt
Ds0 f25 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_INFO,
"Missing elements", "Please choose " + out.colors.size() + " additional colors!");

FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Ds0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show Error</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f25 312 266 112 44 -30 -8 #rect
Ds0 f25 @|StepIcon #fIcon
Ds0 f26 expr in #txt
Ds0 f26 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f26 3 #arcStyle
Ds0 f26 220 348 320 310 #arcP
Ds0 f26 0 0.5000000000000001 0 0 #arcLabel
Ds0 f27 expr out #txt
Ds0 f27 3 #arcStyle
Ds0 f27 424 288 496 403 #arcP
Ds0 f27 1 496 288 #addKink
Ds0 f27 1 0.4637855157628332 0 0 #arcLabel
>Proto Ds0 .type practiceJSF.MastermindDialog.MastermindDialogData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name></name>
    </language>
</elementInfo>
' #txt
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
Ds0 f14 mainOut f17 tail #connect
Ds0 f17 head f16 mainIn #connect
Ds0 f16 mainOut f13 tail #connect
Ds0 f13 head f12 mainIn #connect
Ds0 f18 mainOut f19 tail #connect
Ds0 f19 head f16 mainIn #connect
Ds0 f11 mainOut f24 tail #connect
Ds0 f24 head f23 in #connect
Ds0 f23 out f15 tail #connect
Ds0 f15 head f14 mainIn #connect
Ds0 f23 out f26 tail #connect
Ds0 f26 head f25 mainIn #connect
Ds0 f25 mainOut f27 tail #connect
Ds0 f27 head f12 mainIn #connect
