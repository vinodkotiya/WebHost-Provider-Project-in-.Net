<%@ Import Namespace="System.Web.Mail" %>
<%@ Page Language="vb" Debug="true" AutoEventWireup="false" Codebehind="imail.aspx.vb" Inherits="ekasmin4.imail" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>imail</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="vb" runat="server">
		Sub btnSend_Click(sender As Object, e As EventArgs)
           lblStatus.Text = "Message sent to yo" & txtTo.text 
           Dim theMessage As String
           Dim theMailMessage As New MailMessage
           Dim theMailConn As SmtpMail
           Dim theAttach as MailAttachment
          Try
           theMessage = txtFrom.text & "   " & txtEdit.text
           theMailMessage.from = txtFrom.Text
           theMailMessage.To = txtTo.Text
           theMailMessage.CC = txtCc.Text
           theMailMessage.BCC = txtBcc.Text
           theMailMessage.Subject = txtSub.Text
           theMailMessage.Body = theMessage
           '''' attaching the files
           If Not (file.PostedFile.FileName = "") Then
           theAttach = New MailAttachment(File.PostedFile.FileName)
           theMailMessage.Attachments.Add(theAttach)
           End If  
           theMailConn.Send(theMailMessage)
           lblStatus.Text = "Message sent to " & txtTo.text  
          Catch exc As Exception
          lblStatus.Text = exc.Message 
          End Try
        End Sub
		</script>
	</HEAD>
	<body text="#000000" vLink="#000000" aLink="#5772fb" link="#000000" background="images\bg.gif" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 6px; WIDTH: 760px; POSITION: absolute; TOP: 2px; HEIGHT: 412px" cellSpacing="1" cellPadding="1" width="760" border="1">
				<TR>
					<TD style="WIDTH: 97px; HEIGHT: 65px" colSpan="3"><IMG alt="" src="images\header.gif"></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 136px">
						<a href="default.aspx"><IMG align="middle" alt="" src="images\bighome.gif"></a>
					</TD>
					<TD><IMG alt="" src="images\email.gif"></TD>
					<TD></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 136px">
						<TABLE id="Table3" height="500" cellSpacing="1" cellPadding="1" width="178" align="left" border="0">
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
					</TD>
					<TD>
						<TABLE id="Table2" style="WIDTH: 725px; HEIGHT: 561px" cellSpacing="1" cellPadding="1" width="725" border="1">
							<TR>
								<TD style="HEIGHT: 45px" colSpan="3"></TD>
							</TR>
							<TR>
								<TD colSpan="3">From: &nbsp;
									<asp:textbox id="txtFrom" runat="server" Width="200px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txtFrom" ErrorMessage="Please Enter your email id eg: me@ekasmin.com"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD colSpan="3">To:&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
									<asp:textbox id="txtTo" runat="server" Width="366px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txtTo" ErrorMessage="Please Enter Destination email id eg: dest@ekasmin.com"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD colSpan="3">Cc:&nbsp;&nbsp;&nbsp; &nbsp;
									<asp:textbox id="txtCc" runat="server" Width="366px"></asp:textbox></TD>
							</TR>
							<TR>
								<TD colSpan="3">Bcc:&nbsp;&nbsp; &nbsp;
									<asp:textbox id="txtBcc" runat="server" Width="364px"></asp:textbox></TD>
							</TR>
							<TR>
								<TD colSpan="3">Sub:&nbsp;&nbsp; &nbsp;
									<asp:textbox id="txtSub" runat="server" Width="364px"></asp:textbox></TD>
							</TR>
							<TR>
								<TD colSpan="3">Attach: <INPUT id="File" type="file" name="File1" runat="server"></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 128px" colSpan="3"><asp:textbox id="txtEdit" runat="server" Width="587px" Height="283px" TextMode="MultiLine"></asp:textbox></TD>
							</TR>
							<TR>
								<TD><INPUT id="btnSend" type="button" value="Send" name="btnSend" runat="server" OnServerClick="btnSend_Click"></TD>
								<TD style="WIDTH: 339px"><asp:label id="lblStatus" runat="server">Status</asp:label></TD>
								<TD><asp:button id="btnAuto" runat="server" Width="32px" Text="Auto"></asp:button></TD>
							</TR>
						</TABLE>
						&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
