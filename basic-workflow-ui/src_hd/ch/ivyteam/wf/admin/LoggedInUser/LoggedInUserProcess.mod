[Ivy]
1477BA3958D6FBD1 7.5.0 #module
>Proto >Proto Collection #zClass
Ls0 LoggedInUserProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @UdInit f0 '' #zField
Ls0 @UdProcessEnd f1 '' #zField
Ls0 @GridStep f27 '' #zField
Ls0 @UdMethod f4 '' #zField
Ls0 @UdProcessEnd f5 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @PushWFArc f9 '' #zField
Ls0 @PushWFArc f3 '' #zField
>Proto Ls0 Ls0 LoggedInUserProcess #zField
Ls0 f0 guid 1477BA395ABF4887 #txt
Ls0 f0 method start() #txt
Ls0 f0 inParameterDecl '<> param;' #txt
Ls0 f0 outParameterDecl '<> result;' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -16 15 #rect
Ls0 f0 @|UdInitIcon #fIcon
Ls0 f1 211 51 26 26 0 12 #rect
Ls0 f1 @|UdProcessEndIcon #fIcon
Ls0 f27 actionTable 'out=in;
' #txt
Ls0 f27 actionCode 'import java.util.Set;
import java.util.HashSet;
import ch.ivyteam.ivy.security.SessionInfo;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.ISession;

in.userListLoggedIn.clear();
Set<IUser> loggedInUsers = new HashSet<IUser>();
for(SessionInfo session : ivy.session.getSecurityContext().getClusterSessionsSnapshot().getSessionInfos())
{
	if(!session.isSessionUserUnknown())
	{
		String userName = session.getSessionUserName();
		IUser loggedInUser = ivy.wf.getSecurityContext().findUser(userName);
		if(loggedInUser.getName() != "SYSTEM")
		{
			loggedInUsers.add(loggedInUser);
		}
	}
}
out.userListLoggedIn.addAll(loggedInUsers);

out.showPaginationLoggedIn = in.userListLoggedIn.size() >= 20;' #txt
Ls0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get logged in users</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f27 168 138 112 44 -53 -8 #rect
Ls0 f27 @|StepIcon #fIcon
Ls0 f4 guid 1477BBCD03CE2ED4 #txt
Ls0 f4 method update() #txt
Ls0 f4 inParameterDecl '<> param;' #txt
Ls0 f4 outParameterDecl '<> result;' #txt
Ls0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ls0 f4 83 147 26 26 -23 12 #rect
Ls0 f4 @|UdMethodIcon #fIcon
Ls0 f5 339 147 26 26 0 12 #rect
Ls0 f5 @|UdProcessEndIcon #fIcon
Ls0 f2 expr out #txt
Ls0 f2 109 64 211 64 #arcP
Ls0 f9 expr out #txt
Ls0 f9 280 160 339 160 #arcP
Ls0 f3 expr out #txt
Ls0 f3 109 160 168 160 #arcP
>Proto Ls0 .type ch.ivyteam.wf.admin.LoggedInUser.LoggedInUserData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f27 mainOut f9 tail #connect
Ls0 f9 head f5 mainIn #connect
Ls0 f4 mainOut f3 tail #connect
Ls0 f3 head f27 mainIn #connect
