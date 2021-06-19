<%@ Import Namespace = "System.IO" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="filemgr.aspx.vb" Inherits="ekasmin4.filemgr" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>filemgr</title>
		<script language="VB" runat="server">

       Sub btnUpload_Click(sender As Object, e As EventArgs)

          'If Text1.Value = "" Then
       '      Span1.InnerHtml = "Error: you must enter a file name"
      '       Return
       '   End If
            dim i as integer = 0
          If Not IsNothing(File1.PostedFile) Then
             Dim filepath As String '= Path.Combine(server.MapPath("") , Path.GetFileName(file1.PostedFile.FileName ))
             'second arg extract THE FILE , and server.mappath give path of filemgr.aspx
             ' ntfs problem hai isliye fat32 ka path liya hai
           ' lblpath.text = "D:\inetpub\wwwroot\ekasmin2\"
            
            'lblpath.text = filepath & "    HGH--- " & Path.GetFileName(file1.PostedFile.FileName )
             Try
              If Not (file1.PostedFile.FileName = "") Then
                filepath = Path.Combine( lblpath.text , Path.GetFileName(file1.PostedFile.FileName )) 'Text1.Value  
                File1.PostedFile.SaveAs(filepath)
                i = i+1
               End If    
              If Not (file2.PostedFile.FileName = "") Then
                filepath = Path.Combine( lblpath.text , Path.GetFileName(file2.PostedFile.FileName )) 'Text1.Value  
                File2.PostedFile.SaveAs(filepath)
                i = i+1
              End If    
              If Not (file3.PostedFile.FileName = "") Then
                filepath = Path.Combine( lblpath.text , Path.GetFileName(file3.PostedFile.FileName )) 'Text1.Value  
                File3.PostedFile.SaveAs(filepath)
                i = i+1
              End If    
              If Not (file4.PostedFile.FileName = "") Then
                filepath = Path.Combine( lblpath.text , Path.GetFileName(file4.PostedFile.FileName )) 'Text1.Value  
                File4.PostedFile.SaveAs(filepath)
                i = i+1
              End If    
              If Not (file5.PostedFile.FileName = "") Then
                filepath = Path.Combine( lblpath.text , Path.GetFileName(file5.PostedFile.FileName )) 'Text1.Value  
                File5.PostedFile.SaveAs(filepath)
                i = i+1
              End If  
              If Not (file6.PostedFile.FileName = "") Then
                filepath = Path.Combine( lblpath.text , Path.GetFileName(file6.PostedFile.FileName )) 'Text1.Value  
                File6.PostedFile.SaveAs(filepath)
                i = i+1
              End If  
                Span1.InnerHtml = "Total " & i & " Files uploaded successfully to <b>" & lblpath.text & "</b> on the web server of <b>" & lblHost.text & " </b>"
             Catch Exc As Exception
                Span1.InnerHtml = "Error saving file <b>" & filepath & "</b><br>" & Exc.ToString()
             End Try
        Call folderscanner()
        Call filescanner()
          End If
       End Sub
      

		</script>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body text="#000000" vLink="#000000" aLink="#5772fb" link="#000000" background="images\bg.gif" MS_POSITIONING="GridLayout">
		<form id="Form1">
		</form>
		<font face="Verdana">
			<form id="frmUpload" encType="multipart/form-data" runat="server">
				<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 1px; WIDTH: 780px; POSITION: absolute; TOP: 1px; HEIGHT: 788px" cellSpacing="1" cellPadding="1" width="780" border="0">
					<TBODY>
						<TR>
							<TD style="WIDTH: 105px; HEIGHT: 90px" colSpan="3"><asp:image id="Image1" runat="server" ImageUrl="images\header.gif"></asp:image></TD>
						</TR>
						<TR>
							<TD style="WIDTH: 100px; HEIGHT: 19px"><FONT face="Arial Black" color="#ff0000" size="5"><U>FILE 
										MANAGER</U></FONT></TD>
							<TD style="WIDTH: 959px; HEIGHT: 19px">&nbsp;<IMG alt="" src="images\welcome.gif"><asp:label id="lblHost" runat="server" Font-Bold="True" Font-Size="Large" Font-Names="Times New Roman" Height="34px" Width="275px" ForeColor="Crimson">Host Name</asp:label>
								<asp:imagebutton id="ibSignOut" runat="server" ImageUrl="images\signout.gif" ToolTip="Sign Out"></asp:imagebutton>
								<asp:LinkButton id="lbSignOut" runat="server" Font-Names="Arial" Font-Size="X-Small">Sign Out</asp:LinkButton></TD>
							<TD style="HEIGHT: 19px"></TD>
						</TR>
						<TR>
							<TD style="WIDTH: 100px">
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
							<TD style="WIDTH: 959px">
		</font>
		<H3></H3>
		<table style="WIDTH: 623px; COLOR: white; FONT-FAMILY: Arial, 'Arial Black'; HEIGHT: 309px" border="1">
			<tr>
				<td bgColor="#b0d1fa">
					<P><font face="arial" color="#0033cc" size="4">
							<asp:Label id="lblUpload" runat="server" Font-Overline="True" Font-Underline="True">File Uploader :</asp:Label>
							&nbsp;
							<asp:label id="lblVirtualpath" runat="server" Font-Size="X-Small" Height="20px" Width="388px" ForeColor="BlueViolet">Show virtual path for editing</asp:label></font><asp:label id="lblPath" runat="server" Font-Size="X-Small" Height="20px" Width="54px" ForeColor="BlueViolet" Visible="False">truepath</asp:label><asp:panel id="panUpload" runat="server" Height="158px" Width="612px" ForeColor="Crimson">
							<TABLE border="0">
								<TR>
									<TD style="WIDTH: 287px"><FONT face="arial" size="2">File1&nbsp;</FONT> <INPUT id="File1" type="file" name="File1" runat="server">
									</TD>
									<TD><FONT face="arial" size="2">File2&nbsp;</FONT> <INPUT id="File2" type="file" name="File1" runat="server">
									</TD>
								</TR>
								<TR>
									<TD style="WIDTH: 287px"><FONT face="arial" size="2">File3&nbsp;</FONT> <INPUT id="File3" type="file" name="File1" runat="server">
									</TD>
									<TD><FONT face="arial" size="2">File4&nbsp;</FONT> <INPUT id="File4" type="file" name="File1" runat="server">
									</TD>
								</TR>
								<TR>
									<TD style="WIDTH: 287px"><FONT face="arial" size="2">File5&nbsp;</FONT> <INPUT id="File5" type="file" name="File1" runat="server">
									</TD>
									<TD><FONT face="arial" size="2">File6&nbsp;</FONT> <INPUT id="File6" type="file" name="File1" runat="server">
									</TD>
								</TR>
								<TR>
									<TD style="WIDTH: 287px" bgColor="#b0d1fa">
										<INPUT id="btnUpload" type="button" value="Upload" name="btnUpload" runat="server" OnServerClick="btnUpload_Click"></TD>
								</TR>
							</TABLE>
							<SPAN id="Span1" style="FONT: 8pt verdana" runat="server"></SPAN>
						</asp:panel></P>
				</td>
			</tr>
			<TR>
				<td style="HEIGHT: 19px"><asp:panel id="panExplorer" runat="server" Height="293px" Width="612px" ForeColor="Crimson">
						<P><FONT face="arial" color="#0033cc" size="4">
								<asp:Label id="lblExplorer" runat="server" Font-Underline="True" Font-Overline="True">Explorer :</asp:Label>
								<asp:label id="lblVpath1" runat="server" ForeColor="BlueViolet" Width="388px" Height="20px" Font-Size="X-Small">Show virtual path for editing</asp:label></FONT></P>
						<P>
							<asp:Button id="ibUp" runat="server" Width="102px" Text="|_Up One Level" Enabled="False"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:Button id="btnDelete" runat="server" Width="52px" Text="Delete"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:Button id="btnOpen" runat="server" Text="Open"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:Button id="btnNew" runat="server" Text="New Folder"></asp:Button>&nbsp;&nbsp;
							<asp:TextBox id="txtFolderName" runat="server" Width="73px" Visible="False" MaxLength="8"></asp:TextBox>&nbsp;
							<asp:Button id="btnCreate" runat="server" Text="Create" Visible="False"></asp:Button></P>
						<TABLE border="0">
							<TR>
								<TD style="HEIGHT: 10px" bgColor="#b0d1fa"><FONT color="yellow"><B><U>Folders</U></B></FONT></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 175px">
									<asp:CheckBoxList id="chkFolder" runat="server" Width="602px" Height="55px" Font-Names="Arial" Font-Size="Small" BackColor="#B0D1FA" BorderColor="Gold" BorderStyle="Inset"></asp:CheckBoxList>
									<asp:Button id="btnEdit" runat="server" Text="Edit File"></asp:Button>&nbsp; 
									&nbsp;
									<asp:Button id="btnNewFile" runat="server" Text="New File"></asp:Button></TD>
							</TR>
							<TR>
								<TD><B><U>Files</U> </B>
								</TD>
							</TR>
							<TR>
								<TD>
									<asp:CheckBoxList id="chkFile" runat="server" Width="603px" Height="74px" Font-Names="Arial" Font-Size="Small" BorderColor="PaleTurquoise" BorderStyle="Inset"></asp:CheckBoxList></TD>
							</TR>
						</TABLE>
						<P></P>
						<SPAN id="Span2" style="FONT: 8pt verdana" runat="server"></SPAN>
					</asp:panel></td>
			</TR>
		</table>
		<P></P>
		<br>
		</TD>
		<TD></TD>
		</TR>
		<TR>
			<TD style="WIDTH: 100px"></TD>
			<TD style="WIDTH: 959px"></TD>
			<TD></TD>
		</TR>
		</TBODY></TABLE></FORM></FONT>
		<H3></H3>
		<span id="yo" style="FONT: 8pt verdana" runat="server"></span>
	</body>
</HTML>
