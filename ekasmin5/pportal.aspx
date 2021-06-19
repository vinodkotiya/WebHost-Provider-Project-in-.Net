<%@ Page Language="vb" AutoEventWireup="false" Codebehind="pportal.aspx.vb" Inherits="ekasmin4.pportal" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>pportal</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body vLink="blue" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:panel id="panBack" style="Z-INDEX: 101; LEFT: 3px; POSITION: absolute; TOP: 5px" runat="server" Width="1024px" Height="768px" BackImageUrl="bgi\bgi14.gif" ForeColor="Yellow">
				<TABLE id="Table1" style="WIDTH: 827px; HEIGHT: 546px" cellSpacing="1" cellPadding="1" width="827" border="0">
					<TR>
						<TD style="WIDTH: 261px; HEIGHT: 94px"></TD>
						<TD style="WIDTH: 469px; HEIGHT: 94px">
							<P>
								<asp:Label id="lblpp" runat="server" ForeColor="Firebrick" Height="47px" Width="337px" Font-Names="Arial" Font-Size="X-Large" Font-Italic="True" Font-Bold="True">Personalized Portal</asp:Label></P>
							<P><IMG alt="" src="images\welcome1.gif">
								<asp:Label id="lblWel" runat="server" Height="22px" Width="128px" Font-Names="Arial" Font-Size="X-Small">Enter Your Unique ID</asp:Label>
								<asp:TextBox id="txtUser" runat="server" Width="93px" Font-Names="Arial" Font-Size="X-Small" MaxLength="15"></asp:TextBox>
								<asp:Button id="btnSignIn" runat="server" Width="48px" Font-Names="Arial" Font-Size="X-Small" Text="Sign In"></asp:Button></P>
						</TD>
						<TD style="WIDTH: 73px; HEIGHT: 94px">
							<asp:Panel id="panWhatsnew" runat="server" Height="104px" Width="100px" Font-Names="Arial" Font-Size="X-Small">
								<P><STRONG>What's New</STRONG></P>
								<P>Personalize this page as you like.</P>
							</asp:Panel></TD>
						<TD style="HEIGHT: 94px">
							<asp:Panel id="panAd" runat="server" Height="107px" Width="133px" Font-Names="Arial" Font-Size="X-Small">
								<P><STRONG>Advertisement</STRONG></P>
								<P>Get Free Web Space at&nbsp;<A href="default.aspx">www.ekasmin.com<IMG alt="" src="images\ekasmin.gif" border="0"><A></A></P>
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 261px; HEIGHT: 3px"></TD>
						<TD style="WIDTH: 469px; HEIGHT: 3px">
							<asp:Panel id="panInfo" runat="server" Height="83px" Width="435px" Font-Names="Arial" Font-Size="X-Small">
								<P><STRONG>1. Just sign in using your name each time you visit our portal. The name 
										should not conflict with id's of&nbsp;other. Use name + dob</STRONG></P>
								<P><STRONG>2. change this page as you like.. we will keep track of your settings each 
										time you visit.</STRONG></P>
							</asp:Panel></TD>
						<TD style="WIDTH: 73px; HEIGHT: 3px">
							<asp:Panel id="panNow" runat="server" Height="87px" Width="101px">
								<asp:Label id="lblNow" runat="server" Height="85px" Width="98px" Font-Names="Arial" Font-Size="X-Small">Date:</asp:Label>
							</asp:Panel></TD>
						<TD style="HEIGHT: 3px">
							<asp:Panel id="panPoll" runat="server" Height="72px" Width="132px" Font-Names="Arial" Font-Size="X-Small">
								<P><STRONG>POLL</STRONG></P>
								<P>Do you like this site :
									<asp:RadioButtonList id="RadioButtonList1" runat="server" Font-Size="X-Small" RepeatDirection="Horizontal">
										<asp:ListItem Value="No">No</asp:ListItem>
										<asp:ListItem Value="Yes" Selected="True">Yes</asp:ListItem>
									</asp:RadioButtonList></P>
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 261px; HEIGHT: 233px"></TD>
						<TD style="WIDTH: 469px; HEIGHT: 233px">
							<P><FONT face="Arial" size="2">This sample illustrates a personalized portal home page 
									application. The application allows users to customize a home page to show 
									various modules of their choosing, such as a&nbsp;poll or favorite links list. 
									Each module is implemented as a user control, which is dynamically added to the 
									home page if the user has chosen to include it. The custom personalization 
									settings are maintained in a&nbsp;access database and are retrieved using a 
									personalization&nbsp; module component (which works much as the session state 
									and application state HTTP modules do).</FONT>
							</P>
							<P><FONT face="Arial" size="2">Selection Order: checkbox &gt; bgi&nbsp;= 
									textcol&nbsp;&nbsp; coz checkbox can't retain there view state between responce 
									and reply roundtrip.</FONT></P>
						</TD>
						<TD style="WIDTH: 73px; HEIGHT: 233px">
							<asp:Panel id="panLink" runat="server" Height="222px" Width="101px" Font-Names="Arial" Font-Size="X-Small">
								<P><STRONG>Cool Links:</STRONG></P>
								<P>&nbsp;<A href="default.aspx">Home</A></P>
								<P>&nbsp;<A href="imail.aspx">iMail</A></P>
								<P>&nbsp;<A href="feedback.aspx">FeedBack</A></P>
								<P>&nbsp;<A href="webedit.aspx">WebEditor</A></P>
								<P>&nbsp;<A href="filemgr.aspx">FileManager</A></P>
								<P>&nbsp;<A href="www.rgtu.net">RGPV</A></P>
							</asp:Panel>&nbsp;&nbsp;&nbsp;
						</TD>
						<TD style="HEIGHT: 233px">
							<asp:Panel id="panWeather" runat="server" Height="243px" Width="108px" Font-Names="Arial" Font-Size="X-Small">
								<P><STRONG>WEATHER</STRONG></P>
								<P>AvgTemp: 33</P>
								<P>MaxTemp: 38</P>
								<P>MinTemp: 26</P>
								<P>Humidity:74%</P>
								<P>Sunrise: 5:30AM</P>
								<P>Sunset:&nbsp; 6:30 PM</P>
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 261px"></TD>
						<TD style="WIDTH: 469px"><FONT face="Arial" size="2"><STRONG>Show:</STRONG></FONT>
							<asp:CheckBoxList id="chkSettings" runat="server" Font-Names="Arial" Font-Size="X-Small" RepeatDirection="Horizontal" RepeatColumns="4">
								<asp:ListItem Value="Advertisement" Selected="True">Advertisement</asp:ListItem>
								<asp:ListItem Value="Wheather" Selected="True">Weather</asp:ListItem>
								<asp:ListItem Value="Poll" Selected="True">Poll</asp:ListItem>
								<asp:ListItem Value="Links" Selected="True">Links</asp:ListItem>
								<asp:ListItem Value="Date n Time" Selected="True">Date n Time</asp:ListItem>
								<asp:ListItem Value="What's New" Selected="True">What's New</asp:ListItem>
								<asp:ListItem Value="Information" Selected="True">Information</asp:ListItem>
							</asp:CheckBoxList></TD>
						<TD style="WIDTH: 73px"></TD>
						<TD></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 261px"></TD>
						<TD style="WIDTH: 469px">
							<asp:Button id="btnChange" runat="server" Font-Names="Arial" Font-Size="X-Small" Text="Save"></asp:Button>&nbsp;
							<asp:Label id="lblBgi" runat="server" ForeColor="DeepPink" Font-Names="Arial" Font-Size="X-Small" Font-Overline="True">Background Image</asp:Label>
							<asp:DropDownList id="ddlBgi" runat="server" Font-Names="Arial" Font-Size="X-Small">
								<asp:ListItem Value="bgi1.gif" Selected="True">bgi1.gif</asp:ListItem>
								<asp:ListItem Value="bgi2.gif">bgi2.gif</asp:ListItem>
								<asp:ListItem Value="bgi3.gif">bgi3.gif</asp:ListItem>
								<asp:ListItem Value="bgi4.gif">bgi4.gif</asp:ListItem>
								<asp:ListItem Value="bgi5.gif">bgi5.gif</asp:ListItem>
								<asp:ListItem Value="bgi6.gif">bgi6.gif</asp:ListItem>
								<asp:ListItem Value="bgi7.gif">bgi7.gif</asp:ListItem>
								<asp:ListItem Value="bgi8.gif">bgi8.gif</asp:ListItem>
								<asp:ListItem Value="bgi9.gif">bgi9.gif</asp:ListItem>
								<asp:ListItem Value="bgi10.gif">bgi10.gif</asp:ListItem>
								<asp:ListItem Value="bgi11.gif">bgi11.gif</asp:ListItem>
								<asp:ListItem Value="bgi12.gif">bgi12.gif</asp:ListItem>
								<asp:ListItem Value="bgi18.gif">bgi18.gif</asp:ListItem>
								<asp:ListItem Value="bgi19.gif">bgi19.gif</asp:ListItem>
								<asp:ListItem Value="bgi20.gif">bgi20.gif</asp:ListItem>
								<asp:ListItem Value="bgi23.gif">bgi23.gif</asp:ListItem>
								<asp:ListItem Value="bgi25.gif">bgi25.gif</asp:ListItem>
								<asp:ListItem Value="bgi13.gif">bgi13.gif</asp:ListItem>
								<asp:ListItem Value="bgi14.gif">bgi14.gif</asp:ListItem>
								<asp:ListItem Value="bgi15.gif">bgi15.gif</asp:ListItem>
								<asp:ListItem Value="bgi16.gif">bgi16.gif</asp:ListItem>
							</asp:DropDownList>&nbsp;
							<asp:Label id="lblText" runat="server" ForeColor="DeepPink" Font-Names="Arial" Font-Size="X-Small" Font-Overline="True">TextColor</asp:Label>
							<asp:dropdownlist id="ddlTextcolor" runat="server" Width="55px" Font-Names="Arial" Font-Size="X-Small">
								<asp:ListItem Value="red">red</asp:ListItem>
								<asp:ListItem Value="green">green</asp:ListItem>
								<asp:ListItem Value="yellow">yellow</asp:ListItem>
								<asp:ListItem Value="blue">blue</asp:ListItem>
								<asp:ListItem Value="khaki">khaki</asp:ListItem>
								<asp:ListItem Value="white">white</asp:ListItem>
								<asp:ListItem Value="black">black</asp:ListItem>
								<asp:ListItem Value="magenta">magenta</asp:ListItem>
								<asp:ListItem Value="pink">pink</asp:ListItem>
								<asp:ListItem Value="lightgreen">lightgreen</asp:ListItem>
								<asp:ListItem Value="lightblue">lightblue</asp:ListItem>
								<asp:ListItem Value="Gold">Gold</asp:ListItem>
								<asp:ListItem Value="aqua">aqua</asp:ListItem>
								<asp:ListItem Value="deepPink">deepPink</asp:ListItem>
								<asp:ListItem Value="HotPink">HotPink</asp:ListItem>
								<asp:ListItem Value="Crimson" Selected="True">Crimson</asp:ListItem>
								<asp:ListItem Value="Navy">Navy</asp:ListItem>
								<asp:ListItem Value="Lime">Lime</asp:ListItem>
								<asp:ListItem Value="Lavender">Lavender</asp:ListItem>
								<asp:ListItem Value="Chocolate">Chocolate</asp:ListItem>
								<asp:ListItem Value="IndianRed">IndianRed</asp:ListItem>
							</asp:dropdownlist></TD>
						<TD style="WIDTH: 73px"></TD>
						<TD></TD>
					</TR>
				</TABLE>
				<asp:Label id="lblBug" runat="server" ForeColor="Red" Width="560px">Mera debugger</asp:Label>
			</asp:panel></form>
	</body>
</HTML>
