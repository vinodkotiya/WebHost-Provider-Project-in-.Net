<%@ Page Language="vb" AutoEventWireup="false" Codebehind="register.aspx.vb" Inherits="ekasmin4.register" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>register</title>
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
					<TD width="89" height="35"><FONT face="Arial" color="#ff0066" size="4"><STRONG><U>REGISTRATION</U></STRONG></FONT></TD>
					<TD width="826" height="35">&nbsp;<IMG alt="" src="images\wlcme.gif"></TD>
					<TD height="35"></TD>
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
					<TD height="531">
						<P>&nbsp;&nbsp;&nbsp;&nbsp;<asp:label id="Label6" runat="server" Font-Size="X-Small" Font-Names="Arial">WWW.EKASMIN.COM/</asp:label><asp:textbox id="txtHost" runat="server" Width="156" Font-Size="X-Small" Font-Names="Arial" Height="24"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" Font-Size="X-Small" Font-Names="Arial" ErrorMessage="Please Enter your site name" ControlToValidate="txtHost"></asp:requiredfieldvalidator>&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:label id="lblExist" runat="server" Width="496px" Font-Size="X-Small" Font-Names="Arial" ForeColor="#C00000"></asp:label></P>
						<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:label id="Label7" runat="server" Font-Size="X-Small" Font-Names="Arial">Password</asp:label>&nbsp;&nbsp;
							<asp:textbox id="txtPwd" runat="server" Width="156" Font-Size="X-Small" Font-Names="Arial" Height="24" TextMode="Password" MaxLength="20"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" Font-Size="X-Small" Font-Names="Arial" ErrorMessage="Please enter a password" ControlToValidate="txtPwd"></asp:requiredfieldvalidator></P>
						<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:label id="Label8" runat="server" Font-Size="X-Small" Font-Names="Arial">Retype Password</asp:label>&nbsp;
							<asp:textbox id="txtretype" runat="server" Width="156" Font-Size="X-Small" Font-Names="Arial" Height="24" TextMode="Password" MaxLength="20"></asp:textbox><asp:comparevalidator id="CompareValidator1" runat="server" Font-Size="X-Small" Font-Names="Arial" ErrorMessage="Password mismatch" ControlToValidate="txtPwd" ControlToCompare="txtretype"></asp:comparevalidator></P>
						<P><asp:label id="Label1" runat="server" Font-Size="X-Small" Font-Names="Arial">First Name</asp:label><asp:textbox id="txtFname" runat="server" Width="102px" Font-Size="X-Small" Font-Names="Arial"></asp:textbox>&nbsp;&nbsp;&nbsp;
							<asp:label id="Label2" runat="server" Font-Size="X-Small" Font-Names="Arial">Last Name</asp:label><asp:textbox id="txtLname" runat="server" Width="94px" Font-Size="X-Small" Font-Names="Arial"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" Width="104px" Font-Size="X-Small" Font-Names="Arial" ErrorMessage="Please Enter Name" ControlToValidate="txtFname"></asp:requiredfieldvalidator><asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" Font-Size="X-Small" Font-Names="Arial" ErrorMessage="Please Enter LastName" ControlToValidate="txtLname"></asp:requiredfieldvalidator></P>
						<P><asp:label id="Label9" runat="server" Font-Size="X-Small" Font-Names="Arial">DoB</asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:dropdownlist id="ddlDate" runat="server" Font-Size="X-Small" Font-Names="Arial">
								<asp:ListItem Value="1">1</asp:ListItem>
								<asp:ListItem Value="2">2</asp:ListItem>
								<asp:ListItem Value="3">3</asp:ListItem>
								<asp:ListItem Value="4">4</asp:ListItem>
								<asp:ListItem Value="5">5</asp:ListItem>
								<asp:ListItem Value="6">6</asp:ListItem>
								<asp:ListItem Value="7">7</asp:ListItem>
								<asp:ListItem Value="8">8</asp:ListItem>
								<asp:ListItem Value="9">9</asp:ListItem>
								<asp:ListItem Value="10">10</asp:ListItem>
								<asp:ListItem Value="11">11</asp:ListItem>
								<asp:ListItem Value="12">12</asp:ListItem>
								<asp:ListItem Value="13">13</asp:ListItem>
								<asp:ListItem Value="14">14</asp:ListItem>
								<asp:ListItem Value="15">15</asp:ListItem>
								<asp:ListItem Value="16">16</asp:ListItem>
								<asp:ListItem Value="17">17</asp:ListItem>
								<asp:ListItem Value="18">18</asp:ListItem>
								<asp:ListItem Value="19">19</asp:ListItem>
								<asp:ListItem Value="20">20</asp:ListItem>
								<asp:ListItem Value="21">21</asp:ListItem>
								<asp:ListItem Value="22">22</asp:ListItem>
								<asp:ListItem Value="23">23</asp:ListItem>
								<asp:ListItem Value="24">24</asp:ListItem>
								<asp:ListItem Value="25">25</asp:ListItem>
								<asp:ListItem Value="26">26</asp:ListItem>
								<asp:ListItem Value="27">27</asp:ListItem>
								<asp:ListItem Value="28">28</asp:ListItem>
								<asp:ListItem Value="29">29</asp:ListItem>
								<asp:ListItem Value="30">30</asp:ListItem>
								<asp:ListItem Value="31">31</asp:ListItem>
							</asp:dropdownlist><asp:dropdownlist id="ddlMonth" runat="server" Font-Size="X-Small" Font-Names="Arial">
								<asp:ListItem Value="January">January</asp:ListItem>
								<asp:ListItem Value="February">February</asp:ListItem>
								<asp:ListItem Value="March">March</asp:ListItem>
								<asp:ListItem Value="April">April</asp:ListItem>
								<asp:ListItem Value="May">May</asp:ListItem>
								<asp:ListItem Value="June">June</asp:ListItem>
								<asp:ListItem Value="July">July</asp:ListItem>
								<asp:ListItem Value="August">August</asp:ListItem>
								<asp:ListItem Value="September">September</asp:ListItem>
								<asp:ListItem Value="October">October</asp:ListItem>
								<asp:ListItem Value="November">November</asp:ListItem>
								<asp:ListItem Value="December">December</asp:ListItem>
							</asp:dropdownlist><asp:dropdownlist id="ddlYear" runat="server" Font-Size="X-Small" Font-Names="Arial">
								<asp:ListItem Value="1980">1980</asp:ListItem>
								<asp:ListItem Value="1981">1981</asp:ListItem>
								<asp:ListItem Value="1982">1982</asp:ListItem>
								<asp:ListItem Value="1983">1983</asp:ListItem>
								<asp:ListItem Value="1984">1984</asp:ListItem>
								<asp:ListItem Value="1985">1985</asp:ListItem>
								<asp:ListItem Value="1986">1986</asp:ListItem>
								<asp:ListItem Value="1987">1987</asp:ListItem>
								<asp:ListItem Value="1988">1988</asp:ListItem>
								<asp:ListItem Value="1989">1989</asp:ListItem>
							</asp:dropdownlist><asp:label id="Label10" runat="server" Font-Size="X-Small" Font-Names="Arial">dd/mm/yyyy</asp:label></P>
						<P><asp:label id="Label3" runat="server" Font-Size="X-Small" Font-Names="Arial">Address</asp:label>&nbsp;&nbsp;&nbsp;
							<asp:textbox id="txtAddress" runat="server" Width="278px" Font-Size="X-Small" Font-Names="Arial"></asp:textbox></P>
						<P><asp:label id="Label4" runat="server" Font-Size="X-Small" Font-Names="Arial">City</asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:dropdownlist id="ddlCity" runat="server" Font-Size="X-Small" Font-Names="Arial">
								<asp:ListItem Value="bhopal">bhopal</asp:ListItem>
								<asp:ListItem Value="mumbai">mumbai</asp:ListItem>
								<asp:ListItem Value="delhi">delhi</asp:ListItem>
								<asp:ListItem Value="banglore">banglore</asp:ListItem>
							</asp:dropdownlist></P>
						<P><asp:label id="Label11" runat="server" Font-Size="X-Small" Font-Names="Arial">Zip</asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							&nbsp;
							<asp:textbox id="txtZip" runat="server" Font-Size="X-Small" Font-Names="Arial"></asp:textbox><asp:rangevalidator id="RangeValidator1" runat="server" Font-Size="X-Small" Font-Names="Arial" ErrorMessage="Please Type Numeric Values" ControlToValidate="txtZip" MaximumValue="999999" MinimumValue="11111"></asp:rangevalidator></P>
						<P><asp:label id="Label12" runat="server" Font-Size="X-Small" Font-Names="Arial">Fone</asp:label>&nbsp;&nbsp;&nbsp; 
							&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:textbox id="txtFone" runat="server" Font-Size="X-Small" Font-Names="Arial"></asp:textbox></P>
						<P><asp:label id="Label13" runat="server" Font-Size="X-Small" Font-Names="Arial">Cell:</asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:textbox id="txtCell" runat="server" Font-Size="X-Small" Font-Names="Arial"></asp:textbox></P>
						<P><asp:label id="Label14" runat="server" Font-Size="X-Small" Font-Names="Arial">email:</asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:textbox id="txtEmail" runat="server" Font-Size="X-Small" Font-Names="Arial"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" Font-Size="X-Small" Font-Names="Arial" ErrorMessage="Please Enter Email" ControlToValidate="txtEmail"></asp:requiredfieldvalidator></P>
						<P><asp:label id="Label15" runat="server" Font-Size="X-Small" Font-Names="Arial">Web</asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:textbox id="txtWeb" runat="server" Font-Size="X-Small" Font-Names="Arial"></asp:textbox></P>
						<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:button id="btnSubmit" runat="server" Text="Submit"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:HyperLink id="HyperLink1" runat="server" NavigateUrl="register.aspx?auto=1">Auto Fill</asp:HyperLink>&nbsp;</P>
					</TD>
					<TD height="531"></TD>
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
				<TR>
					<TD width="89"></TD>
					<TD width="826"></TD>
					<TD></TD>
				</TR>
			</TABLE>
		</form>
	</BODY>
</HTML>
