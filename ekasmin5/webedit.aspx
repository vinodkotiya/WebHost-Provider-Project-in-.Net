<%@ Page Language="vb" AutoEventWireup="false" Codebehind="webedit.aspx.vb" Inherits="ekasmin4.webedit" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>webedit</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<BODY vLink="#000000" aLink="#5772fb" link="#000000" background="images\bg.gif" MS_POSITIONING="GridLayout">
		<form id="frmedit" runat="server">
			<TABLE id="Table1" style="LEFT: 0px; POSITION: absolute; TOP: 1px" height="743" width="752" border="0">
				<TR>
					<TD width="89" colSpan="3" height="78"><IMG alt="" src="images\header.gif" align="left"></TD>
				</TR>
				<TR>
					<TD height="35"><FONT face="Arial Black" color="#ff0000" size="5"><U>WEB EDITOR</U></FONT></TD>
					<TD width="826" height="35"><IMG alt="" src="images\welcome.gif">
						<asp:label id="lblHost" runat="server" Width="275px" Height="34px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Crimson">Host Name</asp:label>
						<asp:imagebutton id="ibSignOut" runat="server" ImageUrl="images\signout.gif" ToolTip="Sign Out"></asp:imagebutton>
						<asp:LinkButton id="lbSignOut" runat="server" Font-Size="X-Small" Font-Names="Arial">Sign Out</asp:LinkButton></TD>
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
						<TABLE id="Table3" style="WIDTH: 686px; HEIGHT: 547px" cellSpacing="1" cellPadding="1" width="686" border="1">
							<TR>
								<TD style="HEIGHT: 38px" bgColor="#b0d1fa" colSpan="2">&nbsp;
									<asp:label id="lblVirtualpath" runat="server" Width="499px" Height="5px" Font-Size="X-Small" ForeColor="BlueViolet">Show virtual path for editing</asp:label><asp:label id="lblPath" runat="server" Width="72px" Height="3px" Visible="False">truepath</asp:label></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 556px"><asp:textbox id="txtEditor" runat="server" Width="400px" Height="489px" Font-Names="Arial" Font-Size="X-Small" ForeColor="Blue" TextMode="MultiLine" BackColor="Lavender"></asp:textbox></TD>
								<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<TABLE id="Table4" style="WIDTH: 152px; HEIGHT: 439px" cellSpacing="1" cellPadding="1" width="152" border="1">
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 40px"><asp:button id="btnStart" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Start"></asp:button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 40px"><asp:button id="btnEnd" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="End"></asp:button></TD>
											<TD style="HEIGHT: 40px"></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 21px" bgColor="#b0d1fa" colSpan="1" rowSpan="1"><asp:button id="btnBody" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="Body"></asp:button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 21px" bgColor="#b0d1fa"><asp:dropdownlist id="ddlBodyc" runat="server" Width="55px" Font-Names="Arial" Font-Size="X-Small">
													<asp:ListItem Value="red">red</asp:ListItem>
													<asp:ListItem Value="green">green</asp:ListItem>
													<asp:ListItem Value="yellow">yellow</asp:ListItem>
													<asp:ListItem Value="blue" Selected="True">blue</asp:ListItem>
													<asp:ListItem Value="khaki">khaki</asp:ListItem>
													<asp:ListItem Value="white">white</asp:ListItem>
													<asp:ListItem Value="black">black</asp:ListItem>
													<asp:ListItem Value="magenta">magenta</asp:ListItem>
													<asp:ListItem Value="pink">pink</asp:ListItem>
													<asp:ListItem Value="lightgreen">lightgreen</asp:ListItem>
													<asp:ListItem Value="lightblue">lightblue</asp:ListItem>
													<asp:ListItem Value="lightred">lightred</asp:ListItem>
													<asp:ListItem Value="aqua">aqua</asp:ListItem>
												</asp:dropdownlist></TD>
											<TD style="HEIGHT: 21px" bgColor="#b0d1fa"><asp:dropdownlist id="ddlBodyt" runat="server" Width="55px" Font-Names="Arial" Font-Size="X-Small">
													<asp:ListItem Value="red">red</asp:ListItem>
													<asp:ListItem Value="green">green</asp:ListItem>
													<asp:ListItem Value="yellow">yellow</asp:ListItem>
													<asp:ListItem Value="blue">blue</asp:ListItem>
													<asp:ListItem Value="khaki">khaki</asp:ListItem>
													<asp:ListItem Value="white" Selected="True">white</asp:ListItem>
													<asp:ListItem Value="black">black</asp:ListItem>
													<asp:ListItem Value="magenta">magenta</asp:ListItem>
													<asp:ListItem Value="pink">pink</asp:ListItem>
													<asp:ListItem Value="lightgreen">lightgreen</asp:ListItem>
													<asp:ListItem Value="lightblue">lightblue</asp:ListItem>
													<asp:ListItem Value="lightred">lightred</asp:ListItem>
													<asp:ListItem Value="aqua">aqua</asp:ListItem>
												</asp:dropdownlist></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 21px"><asp:button id="btnBold" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="Bold"></asp:button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 21px"><asp:button id="btnItalic" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Italic" Font-Italic="True"></asp:button></TD>
											<TD style="HEIGHT: 21px"><asp:button id="btnUnder" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Under" Font-Underline="True"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 7px" bgColor="#b0d1fa"><asp:button id="btnFont" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="Font"></asp:button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 7px" bgColor="#b0d1fa"><asp:dropdownlist id="ddlSize" runat="server" Font-Names="Arial" Font-Size="X-Small">
													<asp:ListItem Value="1">1</asp:ListItem>
													<asp:ListItem Value="2" Selected="True">2</asp:ListItem>
													<asp:ListItem Value="3">3</asp:ListItem>
													<asp:ListItem Value="4">4</asp:ListItem>
													<asp:ListItem Value="5">5</asp:ListItem>
													<asp:ListItem Value="6">6</asp:ListItem>
												</asp:dropdownlist></TD>
											<TD style="HEIGHT: 7px" bgColor="#b0d1fa"><asp:dropdownlist id="ddlColor" runat="server" Width="55px" Font-Names="Arial" Font-Size="X-Small">
													<asp:ListItem Value="red">red</asp:ListItem>
													<asp:ListItem Value="green">green</asp:ListItem>
													<asp:ListItem Value="yellow">yellow</asp:ListItem>
													<asp:ListItem Value="blue" Selected="True">blue</asp:ListItem>
													<asp:ListItem Value="khaki">khaki</asp:ListItem>
													<asp:ListItem Value="white">white</asp:ListItem>
													<asp:ListItem Value="black">black</asp:ListItem>
													<asp:ListItem Value="magenta">magenta</asp:ListItem>
													<asp:ListItem Value="pink">pink</asp:ListItem>
													<asp:ListItem Value="lightgreen">lightgreen</asp:ListItem>
													<asp:ListItem Value="lightblue">lightblue</asp:ListItem>
													<asp:ListItem Value="lightred">lightred</asp:ListItem>
													<asp:ListItem Value="aqua">aqua</asp:ListItem>
												</asp:dropdownlist></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 7px"><asp:dropdownlist id="ddlHeading" runat="server" Font-Names="Arial" Font-Size="X-Small">
													<asp:ListItem Value="h1">h1</asp:ListItem>
													<asp:ListItem Value="h2">h2</asp:ListItem>
													<asp:ListItem Value="h3" Selected="True">h3</asp:ListItem>
													<asp:ListItem Value="h4">h4</asp:ListItem>
													<asp:ListItem Value="h5">h5</asp:ListItem>
													<asp:ListItem Value="h6">h6</asp:ListItem>
													<asp:ListItem Value="h7">h7</asp:ListItem>
												</asp:dropdownlist><asp:button id="btnHeader" runat="server" Width="20px" Text="<"></asp:button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 7px"><asp:button id="btnBr" runat="server" Width="44px" Height="26px" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="BR"></asp:button></TD>
											<TD style="HEIGHT: 7px"><asp:button id="btnHr" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="HR"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 35px" bgColor="#b0d1fa"><asp:button id="btnImgl" runat="server" Width="39px" Font-Names="Arial" Font-Size="X-Small" Text="Left"></asp:button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 35px" bgColor="#b0d1fa"><asp:button id="btnImg" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="Image"></asp:button></TD>
											<TD style="HEIGHT: 35px" bgColor="#b0d1fa"><asp:button id="btnImgr" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Right"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 35px"><asp:button id="btnAnchor" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="Anchor"></asp:button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 35px"><asp:button id="btnSound" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="BGSound"></asp:button></TD>
											<TD style="HEIGHT: 35px"><asp:button id="btnObject" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Object"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 22px" bgColor="#b0d1fa"><asp:button id="btnScript" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="Script"></asp:button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 22px" bgColor="#b0d1fa"><asp:button id="btnApplet" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Applet"></asp:button></TD>
											<TD style="HEIGHT: 22px" bgColor="#b0d1fa"><asp:button id="btnForm" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="Form"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 3px"><asp:button id="btnCenter" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="Center"></asp:button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 3px"><asp:button id="btnOL" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="OList"></asp:button></TD>
											<TD style="HEIGHT: 3px"><asp:button id="btnUlist" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="UList"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 13px" bgColor="#b0d1fa"><asp:button id="btnTable" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="Table"></asp:button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 13px" bgColor="#b0d1fa"><asp:button id="btnTr" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Row"></asp:button></TD>
											<TD style="HEIGHT: 13px" bgColor="#b0d1fa"><asp:button id="btnTd" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Col"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 9px"><asp:button id="btnInput" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Input"></asp:button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 9px"><asp:button id="btnArea" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="TextArea"></asp:button></TD>
											<TD style="HEIGHT: 9px"><asp:button id="btnSelect" runat="server" Text="Select"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px" bgColor="#b0d1fa"><asp:button id="btnFrameset" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="FrameSet"></asp:button></TD>
											<TD style="WIDTH: 78px" bgColor="#b0d1fa"><asp:button id="btnFrame" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Frame"></asp:button></TD>
											<TD bgColor="#b0d1fa"><asp:button id="btnNoframe" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="NoFrame"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px"><asp:button id="btnBlink" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Blink"></asp:button></TD>
											<TD style="WIDTH: 78px"><asp:button id="btnMarquee" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="Marquee"></asp:button></TD>
											<TD><asp:button id="btnPre" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Pre"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px" bgColor="#b0d1fa"><asp:button id="btnSup" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="sup"></asp:button></TD>
											<TD style="WIDTH: 78px" bgColor="#b0d1fa"><asp:button id="btnSub" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Sub"></asp:button></TD>
											<TD bgColor="#b0d1fa"><asp:button id="btnEmp" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="emp"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px; HEIGHT: 26px" bgColor="#b0d1fa">
												<asp:Button id="btnColpick" runat="server" Font-Size="X-Small" Font-Names="Arial" Width="87px" Text="Color Picker" Font-Bold="True"></asp:Button></TD>
											<TD style="WIDTH: 78px; HEIGHT: 26px" bgColor="#b0d1fa">
												<asp:Label id="lblCol" runat="server" Width="83px" BackColor="#8017D2" ForeColor="Yellow" Font-Size="X-Small" Font-Names="Arial" Font-Bold="True">color:</asp:Label></TD>
											<TD style="HEIGHT: 26px" bgColor="#b0d1fa">
												<asp:TextBox id="txtCode" runat="server" Width="73px" MaxLength="7">#8017D2</asp:TextBox></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 88px" bgColor="#b0d1fa"><FONT face="Arial" size="2"><FONT color="#ff0000">Red</FONT>
													<asp:TextBox id="txtRed" runat="server" Width="37px" MaxLength="3">128</asp:TextBox></FONT></TD>
											<TD style="WIDTH: 78px" bgColor="#b0d1fa"><FONT face="Arial" size="2"><FONT color="#009900">Green</FONT>
													<asp:TextBox id="txtGreen" runat="server" Width="37px" MaxLength="3">23</asp:TextBox></FONT></TD>
											<TD bgColor="#b0d1fa"><FONT face="Arial" size="2"><FONT color="#0000ff">Blue</FONT>
													<asp:TextBox id="txtBlue" runat="server" Width="37px" MaxLength="3">210</asp:TextBox></FONT></TD>
										</TR>
									</TABLE>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</TD>
							</TR>
							<TR>
								<TD style="WIDTH: 556px"><asp:button id="btnOpen" runat="server" Text="Open"></asp:button>&nbsp;&nbsp;&nbsp;
									<asp:button id="btnPreview" runat="server" Width="59px" Text="Preview"></asp:button>&nbsp;&nbsp;&nbsp;
									<asp:button id="btnSave" runat="server" Text="Save"></asp:button>&nbsp;&nbsp;&nbsp;
									<asp:button id="btnSaveas" runat="server" Text="Saveas.."></asp:button><asp:label id="Label1" runat="server" Width="117px" Font-Names="Arial" Font-Size="X-Small" ForeColor="Crimson"></asp:label></TD>
								<TD><asp:textbox id="txtSaveas" runat="server" Width="82px" Visible="False" MaxLength="13">newfile.html</asp:textbox>&nbsp;&nbsp;
									<asp:button id="btnSavenow" runat="server" Text="SaveNow" Visible="False"></asp:button></TD>
							</TR>
						</TABLE>
					</TD>
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
