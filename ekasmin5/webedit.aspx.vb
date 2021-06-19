Public Class webedit
    Inherits System.Web.UI.Page
    Protected WithEvents txtEditor As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnBold As System.Web.UI.WebControls.Button
    Protected WithEvents btnItalic As System.Web.UI.WebControls.Button
    Protected WithEvents btnUnder As System.Web.UI.WebControls.Button
    Protected WithEvents btnStart As System.Web.UI.WebControls.Button
    Protected WithEvents btnEnd As System.Web.UI.WebControls.Button
    Protected WithEvents btnFont As System.Web.UI.WebControls.Button
    Protected WithEvents ddlSize As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddlColor As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddlHeading As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnBr As System.Web.UI.WebControls.Button
    Protected WithEvents btnHr As System.Web.UI.WebControls.Button
    Protected WithEvents btnImgl As System.Web.UI.WebControls.Button
    Protected WithEvents btnImg As System.Web.UI.WebControls.Button
    Protected WithEvents btnImgr As System.Web.UI.WebControls.Button
    Protected WithEvents btnAnchor As System.Web.UI.WebControls.Button
    Protected WithEvents btnSound As System.Web.UI.WebControls.Button
    Protected WithEvents btnObject As System.Web.UI.WebControls.Button
    Protected WithEvents btnScript As System.Web.UI.WebControls.Button
    Protected WithEvents btnApplet As System.Web.UI.WebControls.Button
    Protected WithEvents btnForm As System.Web.UI.WebControls.Button
    Protected WithEvents btnTable As System.Web.UI.WebControls.Button
    Protected WithEvents btnOL As System.Web.UI.WebControls.Button
    Protected WithEvents btnUlist As System.Web.UI.WebControls.Button
    Protected WithEvents btnTr As System.Web.UI.WebControls.Button
    Protected WithEvents btnTd As System.Web.UI.WebControls.Button
    Protected WithEvents btnInput As System.Web.UI.WebControls.Button
    Protected WithEvents btnArea As System.Web.UI.WebControls.Button
    Protected WithEvents btnSelect As System.Web.UI.WebControls.Button
    Protected WithEvents btnFrame As System.Web.UI.WebControls.Button
    Protected WithEvents btnFrameset As System.Web.UI.WebControls.Button
    Protected WithEvents btnNoframe As System.Web.UI.WebControls.Button
    Protected WithEvents btnBlink As System.Web.UI.WebControls.Button
    Protected WithEvents btnMarquee As System.Web.UI.WebControls.Button
    Protected WithEvents btnPre As System.Web.UI.WebControls.Button
    Protected WithEvents btnSup As System.Web.UI.WebControls.Button
    Protected WithEvents btnSub As System.Web.UI.WebControls.Button
    Protected WithEvents btnEmp As System.Web.UI.WebControls.Button
    Protected WithEvents btnCenter As System.Web.UI.WebControls.Button
    Protected WithEvents btnBody As System.Web.UI.WebControls.Button
    Protected WithEvents ddlBodyc As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddlBodyt As System.Web.UI.WebControls.DropDownList
    Protected WithEvents lblPath As System.Web.UI.WebControls.Label
    Protected WithEvents btnOpen As System.Web.UI.WebControls.Button
    Protected WithEvents btnSave As System.Web.UI.WebControls.Button
    Protected WithEvents btnSaveas As System.Web.UI.WebControls.Button
    Protected WithEvents btnSavenow As System.Web.UI.WebControls.Button
    Protected WithEvents txtSaveas As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblHost As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents btnPreview As System.Web.UI.WebControls.Button
    Protected WithEvents btnHeader As System.Web.UI.WebControls.Button
    Protected WithEvents lblVirtualpath As System.Web.UI.WebControls.Label
    Protected WithEvents txtRed As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtGreen As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtBlue As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblCol As System.Web.UI.WebControls.Label
    Protected WithEvents txtCode As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSendmail As System.Web.UI.WebControls.Button
    Protected WithEvents txtFriendmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMymail As System.Web.UI.WebControls.TextBox
    Protected WithEvents lbSignOut As System.Web.UI.WebControls.LinkButton
    Protected WithEvents ibSignOut As System.Web.UI.WebControls.ImageButton
    Protected WithEvents btnColpick As System.Web.UI.WebControls.Button

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        'page input parameters "openfile"= \user\index.html

        If Session("hostid") = "" Then 'Session.IsNewSession Then
            Response.Redirect("default.aspx?requestedpage=webedit.aspx")

            Return
        End If

        If Not (Page.IsPostBack) Then

            lblHost.Text = Session("hostid")
            ''' pwd has "\user"
            lblPath.Text = Server.MapPath("") '"D:\inetpub\wwwroot\ekasmin2"  ' Server.MapPath("") 'also change in open
            lblPath.Text = lblPath.Text & Session("pwd") 'Request.Params("pwd")
            lblVirtualpath.Text = "www.ekasmin.com" & Session("pwd")
            If System.IO.Directory.Exists(lblPath.Text) = False Then
                Response.Redirect("default.aspx?errmssg=" & "Sorry, user " & lblPath.Text & " not found.")
                Session.Abandon()
                Return
            End If
            If Request.Params("openfile") = "" Then  '' if new file
                lblPath.Text = lblPath.Text & "\newfile.html"
                lblVirtualpath.Text = lblVirtualpath.Text & "\newfile.html"
                btnSave.Enabled = False   '' so save as...
            Else
                lblPath.Text = lblPath.Text & "\" & Request.Params("openfile")
                lblVirtualpath.Text = lblVirtualpath.Text & "\" & Request.Params("openfile")
                'now  open the file

                Dim str As New IO.FileStream(lblPath.Text, IO.FileMode.Open)
                Dim size As Integer
                Dim f As New System.IO.FileInfo(lblPath.Text)
                size = f.Length
                Try
                    Dim xd As New IO.BinaryReader(str)

                    txtEditor.Text = xd.ReadChars(size)
                    xd.Close() ' strarr
                    ''' JAI MATA DI ..... aakhir file open ho gai ... take 3hr.
                    str.Close()
                Catch ex As Exception
                    lblHost.Text = "size" & size
                End Try


            End If
        End If
    End Sub


    Private Sub btnStart_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnStart.Click
        txtEditor.Text = "<html>" & vbCrLf & "   <head><title> new page </title> </head>" & vbCrLf
    End Sub

    Private Sub btnBold_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnBold.Click
        txtEditor.Text = txtEditor.Text & "<b>    </b>"
    End Sub

    Private Sub btnEnd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnEnd.Click
        txtEditor.Text = txtEditor.Text & vbCrLf & "</body>" & vbCrLf & "</html>"
    End Sub

    Private Sub btnBody_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnBody.Click
        txtEditor.Text = txtEditor.Text & "<body bgcolor=" & ddlBodyc.SelectedItem.Text & " text=" & ddlBodyc.SelectedItem.Text & ">"
    End Sub

    Private Sub btnItalic_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnItalic.Click
        txtEditor.Text = txtEditor.Text & "<i>    </i>"
    End Sub

    Private Sub btnUnder_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnUnder.Click
        txtEditor.Text = txtEditor.Text & "<u>    </u>"
    End Sub

    Private Sub btnFont_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFont.Click
        txtEditor.Text = txtEditor.Text & "<font size=" & ddlSize.SelectedItem.Text & " color=" & ddlColor.SelectedItem.Text & ">    </font>"
    End Sub

    Private Sub ddlHeading_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ddlHeading.SelectedIndexChanged

    End Sub

    Private Sub btnBr_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnBr.Click
        txtEditor.Text = txtEditor.Text & "<br>" & vbCrLf
    End Sub

    Private Sub btnHr_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnHr.Click
        txtEditor.Text = txtEditor.Text & "<hr>" & vbCrLf
    End Sub

    Private Sub btnImg_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnImg.Click
        txtEditor.Text = txtEditor.Text & "<img src= >    </img>"
    End Sub

    Private Sub btnImgl_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnImgl.Click
        txtEditor.Text = txtEditor.Text & "<img align=left src= >    </img>"
    End Sub

    Private Sub btnImgr_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnImgr.Click
        txtEditor.Text = txtEditor.Text & "<img align=right src=>    </img>"
    End Sub

    Private Sub btnAnchor_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAnchor.Click
        txtEditor.Text = txtEditor.Text & "<a href= >    </a>"
    End Sub

    Private Sub btnScript_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnScript.Click
        txtEditor.Text = txtEditor.Text & vbCrLf & "      <script language=vb > " & vbCrLf & "     </script>"
    End Sub

    Private Sub btnSound_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSound.Click
        txtEditor.Text = txtEditor.Text & "<bgsound loop=100 src=>    </bgsound>"
    End Sub

    Private Sub btnObject_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnObject.Click
        txtEditor.Text = txtEditor.Text & vbCrLf & "             <object>    </object>"
    End Sub

    Private Sub btnApplet_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnApplet.Click
        txtEditor.Text = txtEditor.Text & vbCrLf & "              <applet class=  src=  height=300  width=400>    </applet>"
    End Sub

    Private Sub btnForm_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnForm.Click
        txtEditor.Text = txtEditor.Text & vbCrLf & "     <form id=frm1 > " & vbCrLf & "    </form>"
    End Sub

    Private Sub btnCenter_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCenter.Click
        txtEditor.Text = txtEditor.Text & "<center>    </center>"
    End Sub

    Private Sub btnOL_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnOL.Click
        txtEditor.Text = txtEditor.Text & "<ol><li>     </li> <li>      </li></ol>"
    End Sub

    Private Sub btnUlist_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnUlist.Click
        txtEditor.Text = txtEditor.Text & "<ul><li>    </li><li>     </li></ul>"
    End Sub

    Private Sub btnTable_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnTable.Click
        txtEditor.Text = txtEditor.Text & vbCrLf & "        <table>" & vbCrLf & "        </table>"
    End Sub

    Private Sub btnTr_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnTr.Click
        txtEditor.Text = txtEditor.Text & "<tr>    </tr>"
    End Sub

    Private Sub btnTd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnTd.Click
        txtEditor.Text = txtEditor.Text & "<td>    </td>"
    End Sub

    Private Sub btnInput_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnInput.Click
        txtEditor.Text = txtEditor.Text & "<input type= value= >    </input>"
    End Sub

    Private Sub btnArea_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnArea.Click
        txtEditor.Text = txtEditor.Text & "<textarea>    </textarea>"
    End Sub

    Private Sub btnSelect_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSelect.Click
        txtEditor.Text = txtEditor.Text & "<select>    </select>"
    End Sub

    Private Sub btnFrame_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFrame.Click
        txtEditor.Text = txtEditor.Text & vbCrLf & "          <frame src=>    </frame>"
    End Sub

    Private Sub btnFrameset_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFrameset.Click
        txtEditor.Text = txtEditor.Text & vbCrLf & "       <frameset rows=2 cols=2> " & vbCrLf & vbCrLf & vbCrLf & "       </frameset>" & vbCrLf
    End Sub

    Private Sub btnNoframe_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNoframe.Click
        txtEditor.Text = txtEditor.Text & vbCrLf & "          <noframe>    </noframe>"
    End Sub

    Private Sub btnBlink_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnBlink.Click
        txtEditor.Text = txtEditor.Text & "<blink>  for Netscape Nevigator only  </blink>"
    End Sub

    Private Sub btnMarquee_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnMarquee.Click
        txtEditor.Text = txtEditor.Text & "<marquee> for internet explorer only   </marquee>"
    End Sub

    Private Sub btnPre_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnPre.Click
        txtEditor.Text = txtEditor.Text & "<pre>    </pre>"
    End Sub

    Private Sub btnSup_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSup.Click
        txtEditor.Text = txtEditor.Text & "<sup>    </sup>"
    End Sub

    Private Sub btnSub_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSub.Click
        txtEditor.Text = txtEditor.Text & "<sub>    </sub>"
    End Sub

    Private Sub btnEmp_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnEmp.Click
        txtEditor.Text = txtEditor.Text & "<emp>    </emp>"
    End Sub
    Function savefile(ByVal filename As String)

        '        Dim str As New IO.FileStream(lblPath.Text, IO.FileMode.Create)
        '       str.Flush()
        Dim fno As Integer
        fno = FreeFile()

        Try
            FileOpen(fno, lblPath.Text, OpenMode.Output)
            Print(fno, txtEditor.Text)
            FileClose()
            '          Dim xd As New IO.BinaryWriter(str)
            '         xd.Flush()
            'xd.Seek(0, IO.SeekOrigin.Begin)
            'xd.Write(txtEditor.Text)
            'xd.Close() '            txtEditor.Text = xd.ReadChars(size) ' strarr
            ''' JAI MATA DI ..... aakhir file open ho gai ... take 3hr.
            'str.Close()
        Catch ex As Exception
            txtEditor.Text = txtEditor.Text & ex.Message
        End Try
    End Function
    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        savefile(lblPath.Text)
        Label1.Text = "File Saved..."
    End Sub

    Private Sub btnSaveas_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSaveas.Click
        txtSaveas.Visible = True
        btnSavenow.Visible = True
        Label1.Text = "Enter Filename:"
        btnSaveas.Enabled = False
    End Sub

    Private Sub btnSavenow_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSavenow.Click
        Dim pos As Integer
        ''remove \newfile.html and add txtsaveas.text 
        pos = InStrRev(lblVirtualpath.Text, "\", , CompareMethod.Text)
        lblVirtualpath.Text = Mid(lblVirtualpath.Text, 1, pos - 1) & "\" & txtSaveas.Text
        pos = InStrRev(lblPath.Text, "\", , CompareMethod.Text)
        lblPath.Text = Mid(lblPath.Text, 1, pos - 1) & "\" & txtSaveas.Text

        savefile(lblPath.Text)
        txtSaveas.Visible = False
        btnSavenow.Visible = False
        Label1.Text = "File Saved..."
        btnSaveas.Enabled = True
    End Sub

    Private Sub ibSignOut_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ibSignOut.Click
        Session.Abandon()
        Session("hostid") = ""
        Response.Redirect("default.aspx?requestedpage=webedit.aspx")
    End Sub

    Private Sub btnPreview_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnPreview.Click

        Dim pos As Integer
        Dim tfile As String
        ''remove \newfile.html and add txtsaveas.text 
        pos = InStrRev(lblVirtualpath.Text, "\", , CompareMethod.Text)
        pos = InStrRev(lblPath.Text, "\", , CompareMethod.Text)
        tfile = Mid(lblPath.Text, 1, pos - 1) & "\" & "temp.html"

        savefile(tfile)
        'lblHost.Text = tfile & " File saved "
        Response.Redirect(Session("pwd") & "\temp.html?" & tfile)

    End Sub

    Private Sub btnHeader_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnHeader.Click
        txtEditor.Text = txtEditor.Text & "<" & ddlHeading.SelectedItem.Text & ">     </" & ddlHeading.SelectedItem.Text & "> "
    End Sub

    Private Sub btnOpen_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnOpen.Click
        Response.Redirect("filemgr.aspx")
    End Sub


    Private Sub btnColpick_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnColpick.Click
        If (Val(txtRed.Text) >= 0 And Val(txtRed.Text) <= 255) And (Val(txtGreen.Text) >= 0 And Val(txtGreen.Text) <= 255) And (Val(txtBlue.Text) >= 0 And Val(txtBlue.Text) <= 255) Then
            Dim c As System.Drawing.Color
            lblCol.BackColor = c.FromArgb(txtRed.Text, txtGreen.Text, txtBlue.Text)
            txtCode.Text = "#" & Hex(txtRed.Text) & Hex(txtGreen.Text) & Hex(txtBlue.Text)
        Else
            txtCode.Text = "0 to255"
        End If
    End Sub

    Private Sub lbSignOut_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbSignOut.Click
        Session.Abandon()
        Session("hostid") = ""
        Response.Redirect("default.aspx?requestedpage=webedit.aspx")
    End Sub
End Class
