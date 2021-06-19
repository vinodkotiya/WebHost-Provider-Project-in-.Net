<%@ Import  NameSpace="System.Data.OLEDB" %>
<%@ Import NameSpace="System.Data" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="feedback.aspx.vb" Inherits="ekasmin4.feedback" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>feedback</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<BODY vLink="#000000" aLink="#5772fb" link="#000000" background="images\bg.gif" MS_POSITIONING="GridLayout">
		<form id="frm1" runat="server">
			<TABLE id="Table1" style="LEFT: 0px; POSITION: absolute; TOP: 1px" height="743" width="752" border="0">
				<TR>
					<TD width="89" colSpan="3" height="78"><IMG alt="" src="images\header.gif" align="left"></TD>
				</TR>
				<TR>
					<TD width="89" height="35"><a href="default.aspx"><IMG align="middle" alt="" src="images\bighome.gif"></a></TD>
					<TD width="826" height="35"></TD>
					<TD height="35"></TD>
				</TR>
				<TR>
					<TD width="89">
						<TABLE id="Table2" height="500" cellSpacing="1" cellPadding="1" width="178" align="left" border="0">
							<TR>
								<TD height="37"><IMG height="49" alt="" src="images\nav.gif" width="173" border="0"></TD>
							</TR>
							<TR>
								<TD bgColor="#b0d1fa" height="35"><FONT color="#0033cc" size="2"><A href="register.aspx"><IMG src="images\ekasmin.gif" border="0">Web 
											Hosting</A></FONT>
								</TD>
							</TR>
							<TR>
								<TD height="50"><FONT color="#0033cc" size="2"><A href="imail.aspx"><IMG alt="" src="images\ekasmin1.gif" border="0">Instant 
											Mail</A> </FONT>
								</TD>
							</TR>
							<TR>
								<TD bgColor="#b0d1fa" height="28"><FONT color="#0033cc" size="2"><A href="filemgr.aspx"><IMG height="43" alt="" src="images\fm.gif" width="47" border="0">File 
											Manager</A> </FONT>
								</TD>
							</TR>
							<TR>
								<TD height="37"><FONT color="#0033cc" size="2"><A href="webedit.aspx"><IMG height="43" alt="" src="images\edit.gif" width="47" border="0">Online 
											WebEditor</A> </FONT>
								</TD>
							</TR>
							<TR>
								<TD bgColor="#b0d1fa" height="35"></TD>
							</TR>
							<TR>
								<TD height="52"><FONT color="#0033cc" size="2"><A href="pportal.aspx"><IMG height="43" alt="" src="images\pportal.gif" width="47" border="0">Personalized 
											Portal</A></FONT>
								</TD>
							</TR>
							<TR>
								<TD bgColor="#b0d1fa" height="56"><FONT color="#0033cc" size="2"><A href="feedback.aspx"><IMG height="43" alt="" src="images\oops.gif" width="47" border="0">Feedback</A>
									</FONT>
								</TD>
							</TR>
							<TR>
								<TD height="50"><FONT color="#0033cc" size="2"><A href="credit.aspx"><IMG height="43" alt="" src="images\dev.gif" width="47" border="0">Developers</A>
									</FONT>
								</TD>
							</TR>
							<TR>
								<TD bgColor="#b0d1fa"><FONT face="arial" color="#990033" size="2">
										<P>Tell&nbsp;a Friend About Ekasmin:</P>
										<P>Your Email:
											<asp:textbox id="txtMymail" runat="server" Width="94px"></asp:textbox></P>
										<P>Friend Email:
											<asp:textbox id="txtFriendmail" runat="server" Width="88px"></asp:textbox></P>
										<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<asp:button id="btnSendmail" runat="server" Text="Send"></asp:button></P>
									</FONT>
								</TD>
							</TR>
						</TABLE>
						</FONT></TD>
					<TD width="826">
						<TABLE id="Table3" style="WIDTH: 583px; HEIGHT: 558px" cellSpacing="1" cellPadding="1" width="583" border="1">
							<TR>
								<TD style="HEIGHT: 45px" colSpan="3">
									<P><FONT face="Arial" size="2">Tell us what you think about our web site, our products, 
											our organization, or anything else that comes to mind. We welcome all of your 
											comments and suggestions.</FONT></P>
								</TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 54px" colSpan="3">
									<P><STRONG>What kind of comment would you like to send?</STRONG></P>
									<P><asp:radiobuttonlist id="rblType" runat="server" RepeatDirection="Horizontal" Font-Size="X-Small" Font-Names="Arial">
											<asp:ListItem Value="Complaint">Complaint</asp:ListItem>
											<asp:ListItem Value="Problem">Problem</asp:ListItem>
											<asp:ListItem Value="Suggestion" Selected="True">Suggestion</asp:ListItem>
											<asp:ListItem Value="Praise">Praise</asp:ListItem>
										</asp:radiobuttonlist></P>
								</TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 36px" colSpan="3">
									<P><STRONG>What about us do you want to comment on?</STRONG></P>
									<P><asp:dropdownlist id="ddlAbout" runat="server">
											<asp:ListItem Value="Website" Selected="True">Website</asp:ListItem>
											<asp:ListItem Value="Products">Products</asp:ListItem>
											<asp:ListItem Value="File Manager">File Manager</asp:ListItem>
											<asp:ListItem Value="Web Editor">Web Editor</asp:ListItem>
											<asp:ListItem Value="Personalised Portal">Personalised Portal</asp:ListItem>
											<asp:ListItem Value="iMail">iMail</asp:ListItem>
											<asp:ListItem Value="Services">Services</asp:ListItem>
											<asp:ListItem Value="Others">Others</asp:ListItem>
										</asp:dropdownlist></P>
								</TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 58px" colSpan="3">
									<P><STRONG>Enter your comments in the space provided below:</STRONG></P>
									<P><asp:textbox id="txtComment" runat="server" Width="391px" Height="134px" TextMode="MultiLine" Font-Size="X-Small" Font-Names="Arial"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your Suggestion" ControlToValidate="txtComment"></asp:requiredfieldvalidator></P>
								</TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 81px" colSpan="3">
									<P><STRONG>Tell us how to get in touch with you:</STRONG></P>
									<P><STRONG>&nbsp; Name:
											<asp:textbox id="txtName" runat="server"></asp:textbox>&nbsp;&nbsp;
											<asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Name" ControlToValidate="txtName"></asp:requiredfieldvalidator></STRONG></P>
									<P><STRONG>&nbsp; Email:
											<asp:textbox id="txtMail" runat="server"></asp:textbox>&nbsp;&nbsp;&nbsp;
											<asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Email" ControlToValidate="txtMail"></asp:requiredfieldvalidator></STRONG></P>
									<P><STRONG>&nbsp;&nbsp;Fone:&nbsp;
											<asp:textbox id="txtFone" runat="server"></asp:textbox></STRONG></P>
									<P><asp:checkbox id="chkUrgent" runat="server" Text="Please contact me as soon as possible regarding this matter" Font-Names="Arial" Font-Size="X-Small"></asp:checkbox></P>
								</TD>
							</TR>
							<TR>
								<TD colSpan="3"><asp:button id="btnSubmit" runat="server" Text="Submit Feedback"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:button id="btnClear" runat="server" Text="Clear Form"></asp:button></TD>
							</TR>
						</TABLE>
						<asp:label id="lblThanx" runat="server" Font-Names="Arial" Font-Size="X-Small">Please Send your feedback to us for improving our quality of services.....</asp:label></TD>
					<TD></TD>
				</TR>
				<TR>
					<TD width="89"></TD>
					<TD width="826"></TD>
					<TD></TD>
				</TR>
				<TR>
					<TD width="89"></TD>
					<TD width="826"></TD>
					<TD></TD>
				</TR>
			</TABLE>
		</form>
	</BODY>
</HTML>
