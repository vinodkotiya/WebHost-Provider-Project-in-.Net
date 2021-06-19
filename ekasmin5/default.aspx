<%@ Page Language="vb" AutoEventWireup="false" Codebehind="default.aspx.vb" Inherits="ekasmin4._default" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>default</title>
		<META http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<META content="Microsoft FrontPage 5.0" name="GENERATOR">
	</HEAD>
	<BODY vLink="#000000" aLink="#5772fb" link="#000000" background="images\bg.gif">
		<form id="frm1" runat="server">
			<TABLE id="Table1" style="LEFT: 1px; POSITION: absolute; TOP: 0px" height="743" width="752" align="left" border="0">
				<TR>
					<TD width="89" colSpan="3" height="78"><IMG alt="" src="images\header.gif" align="left"></TD>
				</TR>
				<TR>
					<TD width="89" height="35"></TD>
					<TD width="826" height="35"><IMG alt="" src="images\welcome.gif">
						<asp:label id="lblHost" runat="server" Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman" ForeColor="Crimson" Height="26px" Width="275px">Host Name</asp:label><asp:imagebutton id="ibSignOut" runat="server" Visible="False" ImageUrl="images\signout.gif" ToolTip="Sign Out"></asp:imagebutton>
						<asp:LinkButton id="lbSignOut" runat="server" Font-Names="Arial" Font-Size="X-Small">Sign Out</asp:LinkButton></TD>
					<TD height="35"></TD>
				</TR>
				<TR>
					<TD width="89" height="639">
						<TABLE id="Table2" height="500" cellSpacing="1" cellPadding="1" width="178" align="left" border="0">
							<TBODY>
								<TR>
									<TD height="37"><IMG height="49" alt="" src="images\nav.gif" width="173" border="0"></TD>
								</TR>
								<TR>
									<TD bgColor="#b0d1fa" height="35"><font color="#0033cc" size="2"><A href="register.aspx"><IMG src="images\ekasmin.gif" border="0">Web 
												Hosting</A></font>
									</TD>
								</TR>
								<TR>
									<TD height="50"><font color="#0033cc" size="2"><A href="imail.aspx"><IMG alt="" src="images\ekasmin1.gif" border="0">Instant 
												Mail</A> </font>
									</TD>
								</TR>
								<TR>
									<TD bgColor="#b0d1fa" height="28"><font color="#0033cc" size="2"><A href="filemgr.aspx"><IMG height="43" alt="" src="images\fm.gif" width="47" border="0">File 
												Manager</A> </font>
									</TD>
								</TR>
								<TR>
									<TD height="37"><font color="#0033cc" size="2"><A href="webedit.aspx"><IMG alt="" src="images\edit.gif" border="0" height="43" width="47">Online 
												WebEditor</A> </font>
									</TD>
								</TR>
								<TR>
									<TD bgColor="#b0d1fa" height="35"></TD>
								</TR>
								<TR>
									<TD height="52"><font color="#0033cc" size="2"><A href="pportal.aspx"><IMG alt="" src="images\pportal.gif" border="0" height="43" width="47">Personalized 
												Portal</A></font>
									</TD>
								</TR>
								<TR>
									<TD bgColor="#b0d1fa" height="56"><font color="#0033cc" size="2"><A href="feedback.aspx"><IMG alt="" src="images\oops.gif" border="0" height="43" width="47">Feedback</A>
										</font>
									</TD>
								</TR>
								<TR>
									<TD height="50"><font color="#0033cc" size="2"><A href="credit.aspx"><IMG alt="" src="images\dev.gif" border="0" height="43" width="47">Developers</A>
										</font>
									</TD>
								</TR>
								<TR>
									<TD bgColor="#b0d1fa"><font face="arial" color="#990033" size="2">
											<P>Tell&nbsp;a Friend About Ekasmin:</P>
											<P>Your Email:
												<asp:textbox id="txtMymail" runat="server" Width="94px"></asp:textbox></P>
											<P>Friend Email:
												<asp:textbox id="txtFriendmail" runat="server" Width="88px"></asp:textbox></P>
											<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<asp:button id="btnSendmail" runat="server" Text="Send"></asp:button></P>
										</font>
									</TD>
								</TR>
							</TBODY></TABLE>
						</FONT></TD>
					<TD width="826" height="639">
						<TABLE id="Table3" height="605" cellSpacing="1" cellPadding="1" width="811" border="1">
							<TR>
								<TD width="367" height="93"><asp:panel id="panLogin" runat="server" Height="94px" Width="289px">
										<P><FONT face="Arial" color="#0000ff" size="2">Host Name:</FONT>&nbsp;
											<asp:TextBox id="txtHost" runat="server" Width="115px"></asp:TextBox><FONT face="Arial" color="#0000ff" size="2"></FONT></P>
										<P><FONT face="Arial" color="#0000ff" size="2">Password:</FONT>&nbsp;&nbsp;&nbsp;
											<asp:TextBox id="txtPwd" Width="117px" TextMode="Password" Runat="server">vinod</asp:TextBox>&nbsp;&nbsp;
											<asp:Button id="btnSignIn" runat="server" Width="74px" Height="29px" Text="Sign In"></asp:Button>
											<asp:Label id="lblsign" runat="server" Width="278px" ForeColor="Crimson" Font-Names="Arial" Font-Size="X-Small"></asp:Label></P>
									</asp:panel></TD>
								<TD height="93"><STRONG><asp:panel id="Panel1" runat="server" Height="76px" Width="429px">
											<P>New User Sign Up Here....</P>
											<P>&nbsp;&nbsp;
												<asp:ImageButton id="ibNew" runat="server" ImageUrl="images\new.gif"></asp:ImageButton></P>
										</asp:panel>&nbsp; </STRONG>
								</TD>
							</TR>
							<TR>
								<TD bgColor="#b0d1fa" colSpan="2" height="48">
									<P><FONT face="Arial" size="2" color="black"><a href="register.aspx"><STRONG>virtual web 
													hosting (Many domain sites on one IP)</STRONG></a></FONT></P>
									<P><FONT face="Arial" size="2">Virtual web hosting, at ekasmin.com, is a method to host 
											more then one domain name on the same server, but yet each domain can point to 
											a completely different root directory. This is transparent to the end user 
											viewing the website, or even the webmaster, to some extent. You have to open an 
											account, then we at ekasmin.com will&nbsp;setup a virtual host on our server 
											and&nbsp;we can rent that space off the server that everyone else uses. This is 
											also known as shared hosting, because the server is shared with others. domain 
											name must first be resolved to the IP address then the request sent to the 
											server. But if the request sent to the server is by IP,&nbsp;then server know 
											what domain is being requested by&nbsp;the http request. In the header, the 
											domain is requested. Assume sitex and sitey are on the same server, you can 
											actually connect to <A href="http://www.sitex.com">www.sitex.com</A> but 
											request <A href="http://www.sitey.com">www.sitey.com</A>, and the server will 
											give you www.siteb.com. </FONT>
									</P>
								</TD>
							</TR>
							<TR>
								<TD colSpan="2" height="32">
									<P><FONT face="Arial" size="2" color="black"><a href="imail.aspx"><STRONG>Instant Mail ( iMail)</STRONG></a></FONT></P>
									<P><FONT face="Arial" size="2">The iMail has text editor allows for the creation of the 
											message itself, The ability to allow files or documents to be attached to the 
											message is also available. For example a diagram or schematic could be attached 
											to an email message, offering the recipient the chance to see a project's 
											progress, and comment on it. Also send to cc and bcc&nbsp;addresses. </FONT>
									</P>
								</TD>
							</TR>
							<TR>
								<TD bgColor="#b0d1fa" colSpan="2" height="36">
									<P><FONT face="Arial" size="2" color="black"><a href="filemgr.aspx"><STRONG>File Manager</STRONG></a></FONT></P>
									<P><FONT face="Arial" size="2">web manager is online tool to manage the websites. After 
											login with correct user name and password using FTP one can make changes to the 
											web space.Web pages can be uploaded , deleted , renamed , moved etc. </FONT>
									</P>
								</TD>
							</TR>
							<TR>
								<TD colSpan="2" height="16">
									<P><FONT face="Arial" size="2" color="black"><a href="webedit.aspx"><STRONG>Online 
													Web&nbsp;Editor</STRONG></a></FONT></P>
									<P><FONT face="Arial" size="2">Now the webdesigner can edit there webpages and other 
											documents online. Fully integrated support with the file manager. It has a vast 
											collection of essential html formating tags for rapid web pages creation.</FONT></P>
								</TD>
							</TR>
							<TR>
								<TD bgColor="#b0d1fa" colSpan="2" height="20"></STRONG></FONT>
									<P></P>
									<P><FONT face="Arial" size="2" color="black"><a href="pportal.aspx"><STRONG>Personalized Portal</STRONG></a></FONT>
									<P><FONT face="Arial" size="2">This sample illustrates a personalized portal home page 
											application. The application allows users to customize a home page to show 
											various modules of their choosing,&nbsp;</FONT></P>
								</TD>
							</TR>
							<TR>
								<TD colSpan="2" height="30">
									<P><FONT face="Arial" size="2" color="black"><a href="feedback.aspx"><STRONG>Feedback Section</STRONG></a></FONT></P>
									<P><FONT face="Arial" size="2">To stay up to date with our users requirement, 
											ekasmin.com has an interactive feedback section from where users can quickly 
											send their responce to us.</FONT></P>
								</TD>
							</TR>
							<TR>
								<TD width="212" bgColor="#b0d1fa" colSpan="2"></TD>
							</TR>
						</TABLE>
					</TD>
					<TD height="639"></TD>
				</TR>
				<TR>
					<TD width="89"><FONT color="#0033cc" size="2"><A href="admin.aspx?pwd="><IMG height="43" alt="" src="images\admin.gif" width="47" border="0">Administrator</A>
						</FONT>
					</TD>
					<TD width="826"><IMG alt="" src="images\wave.gif"><IMG alt="" src="images\wave.gif"><IMG alt="" src="images\wave.gif"></TD>
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
