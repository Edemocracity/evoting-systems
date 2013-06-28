<%@page import="com.logicacmg.koa.voorzitter.command.*" %>
<%@page import="com.logicacmg.koa.voorzitter.command.statechange.*" %>
<%@page import="com.logicacmg.koa.dataobjects.*,com.logicacmg.koa.constants.ErrorConstants" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Pragma" content="no-cache"/>
<META http-equiv="Expires" content="-1"/>
<TITLE>Kiezen op afstand - Voorzitter - Resultaat statuswijziging</TITLE>
<LINK href="VoorzitterWeb.css" rel="stylesheet" type="text/css">
</HEAD>
<%
	AbstractStateChangeCommand command = 
		(AbstractStateChangeCommand) request.getAttribute(CommandConstants.COMMAND_IN_REQUEST_KEY);
	
	String sCurrentState = command.getCurrentState();
	CallResult xCallResult = command.getCallResult();

	boolean bIsInvalidFingerprints = xCallResult.getResult() == CallResult.NOTIFY_STATE_CHANGE_INVALID_FINGERPRINTS;

	String backupResult = xCallResult.getBackupResult();
	String sMessage = "no message set";
	int iReturnValue = 0;

	if (sCurrentState.equals (com.logicacmg.koa.constants.SystemState.BLOCKED))
	{
		com.logica.eplatform.error.ErrorMessageFactory factory = com.logica.eplatform.error.ErrorMessageFactory.getErrorMessageFactory();
		sMessage = factory.getErrorMessage(ErrorConstants.CHANGE_STATE_BLOCKED_RETURN_MESSAGE, null);
	} 
	else if (xCallResult != null)
	{	
		sMessage = xCallResult.getMessage();
		iReturnValue = xCallResult.getResult();
	}
%>
<BODY>
<table width="725" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
	<td colspan="3" background="images/banner_filler.gif"><div align="left">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="76" height="57">
				<div align="left"><IMG src="images/leeuw.gif" width="76" height="57" border="0"></div>
			</td>
			<td width="640" height="57">
				<div align="center"><font color="#FFFFFF" size="4" face="Arial, Helvetica, sans-serif">
					<strong>Verkiezing van de leden van het Europees Parlement 2004</strong></font>
				</div>
			</td>
		</tr>
		</table>
	</div></td>  
  </tr>
  <tr valign="top">
    <td width="3%" align="left" height="380"><img src="images/blueline_3.gif" width="1" height="380"></td>
    <td width="94%" valign="top" height="360">
      <table width="100%" height="100%">
        <tr>
          <td height = "15%">
            <p>Het resultaat van de statuswijziging is:<br>
            <%
              if (bIsInvalidFingerprints)
              {
            %>
                <H3>
            <%
              }
            %>
            <%= sMessage %>
            <%
              if (bIsInvalidFingerprints)
              {
            %>
                </H3>
            <%
              }
            %>
            </p>
          </td>
        </tr>
        <tr>
          <td height="15%">
            De huidige systeemstatus is:
            <b><%= com.logicacmg.koa.constants.SystemState.getDutchTranslationForState (sCurrentState) %></b>
          </td>
        </tr>
        <tr>
          <td height="15%"><%= backupResult %>
          </td>
        </tr>					
        <tr>
          <td align="left" height="15%">
            <BUTTON STYLE="width:200" ONCLICK="window.location='Index'">Terug naar statusoverzicht</BUTTON>
          </td>
        </tr>
      </table>
    </td>
    <td width="3%" align="right" height="380"><img src="images/blueline_3.gif" width="1" height="380"></td>
  </tr>
  <tr valign="top">
    <td colspan="3" height="10"><img src="images/horizontalline_2.gif" width="726" height="1"></td>
  </tr>
  <tr valign="top">
    <td colspan="3">
      <div align="center">
      <H2>De verantwoordelijkheid voor deze site berust bij het ministerie van Binnenlandse Zaken en Koninkrijksrelaties</H2>
      </div>
    </td>
  </tr>
</table>
<%@ include file="refreshFooter.jsp" %>
</BODY>
<HEAD>
<META http-equiv="Pragma" content="no-cache" />
<META http-equiv="Expires" content="-1" />
</HEAD>
</HTML>