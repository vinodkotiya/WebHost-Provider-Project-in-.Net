<%@ Page Language="vb" AutoEventWireup="false" Codebehind="admin.aspx.vb" Inherits="ekasmin4.admin" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>admin</title>
		<script language="vb" runat="server">
		
		
		</script>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<BODY vLink="#000000" aLink="#5772fb" link="#000000" background="images\bg.gif">
		<form id="frm1" runat="server">
			<TABLE id="Table1" style="LEFT: 1px; POSITION: absolute; TOP: 0px" height="743" width="752" align="left" border="0">
				<TR>
					<TD width="89" colSpan="3" height="78"><IMG alt="" src="images\header.gif" align="left"></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 45px" width="89" height="45">
						<a href="default.aspx"><IMG align="middle" alt="" src="images\bighome.gif"></a></TD>
					<TD style="HEIGHT: 45px" width="826" height="45"><FONT face="Arial" color="#ff0000" size="6"><STRONG><U>
									<asp:Label id="lblAdmin" runat="server" Font-Underline="True" Font-Overline="True">Administrator</asp:Label></U></STRONG></FONT></TD>
					<TD style="HEIGHT: 45px" height="45"></TD>
				</TR>
				<TR>
					<TD width="89" height="531"></FONT>
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
					</TD>
					<TD width="826" height="531">
						<P><asp:label id="Label1" runat="server" Width="240px" Font-Names="Arial" ForeColor="Crimson" Font-Bold="True" Font-Overline="True" Font-Underline="True">List of Current Ekasmin Hosts</asp:label></P>
						<P><asp:datagrid id="dgHost" runat="server" Width="978px" Font-Names="Arial" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Horizontal" Font-Size="X-Small" OnItemCommand="Click_GridHost" AutoGenerateColumns="False">
								<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
								<AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>
								<ItemStyle ForeColor="#4A3C8C" BackColor="#E7E7FF"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#4A3C8C"></HeaderStyle>
								<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
								<Columns>
									<asp:ButtonColumn Text="Remove" HeaderText="Remove" CommandName="remove">
										<ItemStyle Font-Bold="True" ForeColor="Red"></ItemStyle>
									</asp:ButtonColumn>
									<asp:BoundColumn DataField="hostid" SortExpression="hostid" HeaderText="hostid"></asp:BoundColumn>
									<asp:BoundColumn DataField="fname" SortExpression="fname" HeaderText="First Name"></asp:BoundColumn>
									<asp:BoundColumn DataField="lname" SortExpression="lname" HeaderText="Last Name"></asp:BoundColumn>
									<asp:BoundColumn DataField="dob" HeaderText="Date of Birth"></asp:BoundColumn>
									<asp:BoundColumn DataField="address" HeaderText="Address">
										<HeaderStyle Width="100px"></HeaderStyle>
									</asp:BoundColumn>
									<asp:BoundColumn DataField="city" SortExpression="city" HeaderText="City"></asp:BoundColumn>
									<asp:BoundColumn DataField="zip" HeaderText="Zip"></asp:BoundColumn>
									<asp:BoundColumn DataField="fone" HeaderText="Fone"></asp:BoundColumn>
									<asp:BoundColumn DataField="cell" HeaderText="Cell No"></asp:BoundColumn>
									<asp:ButtonColumn DataTextField="email" SortExpression="email" HeaderText="Send iMail" CommandName="imailhost"></asp:ButtonColumn>
									<asp:HyperLinkColumn DataNavigateUrlField="email" DataNavigateUrlFormatString="mailto:{0}" DataTextField="email" SortExpression="email" HeaderText="Send Email"></asp:HyperLinkColumn>
									<asp:BoundColumn DataField="web" HeaderText="WebSite"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="email" HeaderText="mr india"></asp:BoundColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF" Mode="NumericPages"></PagerStyle>
							</asp:datagrid></P>
						<P><asp:label id="Label2" runat="server" Width="136px" Font-Names="Arial" ForeColor="Crimson" Font-Bold="True" Font-Overline="True" Font-Underline="True">User's Feedback</asp:label></P>
						<P><asp:datagrid id="dgFeedback" runat="server" Font-Names="Arial" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Horizontal" Font-Size="X-Small" OnItemCommand="Click_GridFeedback" AutoGenerateColumns="False">
								<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
								<AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>
								<ItemStyle ForeColor="#4A3C8C" BackColor="#E7E7FF"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#4A3C8C"></HeaderStyle>
								<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
								<Columns>
									<asp:ButtonColumn Text="Delete" HeaderText="Delete" CommandName="delete">
										<ItemStyle Font-Bold="True" ForeColor="Red"></ItemStyle>
									</asp:ButtonColumn>
									<asp:BoundColumn DataField="name" SortExpression="name" HeaderText="Name of User"></asp:BoundColumn>
									<asp:BoundColumn DataField="ftime" HeaderText="Time"></asp:BoundColumn>
									<asp:BoundColumn DataField="isurgent" HeaderText="Is it Urgent?"></asp:BoundColumn>
									<asp:BoundColumn DataField="ftype" HeaderText="Type of Feedback"></asp:BoundColumn>
									<asp:BoundColumn DataField="fabout" HeaderText="About"></asp:BoundColumn>
									<asp:BoundColumn DataField="comment" HeaderText="Comments">
										<HeaderStyle ForeColor="Black" Width="200px" BackColor="White"></HeaderStyle>
										<ItemStyle ForeColor="Black" BackColor="White"></ItemStyle>
									</asp:BoundColumn>
									<asp:ButtonColumn DataTextField="mail" SortExpression="mail" HeaderText="Send iMail" CommandName="imail"></asp:ButtonColumn>
									<asp:HyperLinkColumn DataNavigateUrlField="mail" DataNavigateUrlFormatString="mailto:{0}" DataTextField="mail" SortExpression="mail" HeaderText="Send Email"></asp:HyperLinkColumn>
									<asp:BoundColumn DataField="fone" HeaderText="Fone"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="mail" HeaderText="mr india"></asp:BoundColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF" Mode="NumericPages"></PagerStyle>
							</asp:datagrid></P>
						<P>&nbsp;</P>
					</TD>
					<TD height="531"></TD>
				</TR>
				<TR>
					<TD width="89"></TD>
					<TD width="826"><asp:label id="Label3" runat="server" Width="544px" DESIGNTIMEDRAGDROP="872" Height="35px">Label</asp:label></TD>
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
