package ch.ivyteam.wf;

import ch.ivyteam.ivy.application.IProcessModelVersion;
import ch.ivyteam.ivy.model.value.WebLink;
import ch.ivyteam.ivy.workflow.IWorkflowProcessModelVersion;

public final class UrlUtil
{
  public static WebLink getProcessStartUrl(String userFriendlyRequestPath)
  {
    var pmv = IProcessModelVersion.current().getAdapter(IWorkflowProcessModelVersion.class);
    return pmv.findStartElementByUserFriendlyRequestPath(userFriendlyRequestPath).getLink();
  }
  
  private UrlUtil()
  {
  }
}
