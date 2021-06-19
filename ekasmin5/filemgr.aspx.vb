Public Class filemgr
    Inherits System.Web.UI.Page
    Protected WithEvents lblPath As System.Web.UI.WebControls.Label
    Protected WithEvents lblHost As System.Web.UI.WebControls.Label
    Protected WithEvents panUpload As System.Web.UI.WebControls.Panel
    Protected WithEvents File1 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents File2 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents File4 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents File5 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents File6 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents Span1 As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents Span2 As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents btnOpen As System.Web.UI.WebControls.Button
    Protected WithEvents yo As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents panExplorer As System.Web.UI.WebControls.Panel
    Protected WithEvents btnUpload As System.Web.UI.HtmlControls.HtmlInputButton
    Protected WithEvents chkFile As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents chkFolder As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents btnDelete As System.Web.UI.WebControls.Button
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents btnEdit As System.Web.UI.WebControls.Button
    Protected WithEvents ibUp As System.Web.UI.WebControls.Button
    Protected WithEvents btnNew As System.Web.UI.WebControls.Button
    Protected WithEvents txtFolderName As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnCreate As System.Web.UI.WebControls.Button
    Protected WithEvents lblVirtualpath As System.Web.UI.WebControls.Label
    Protected WithEvents btnNewFile As System.Web.UI.WebControls.Button
    Protected WithEvents btnSendmail As System.Web.UI.WebControls.Button
    Protected WithEvents txtFriendmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMymail As System.Web.UI.WebControls.TextBox
    Protected WithEvents lbSignOut As System.Web.UI.WebControls.LinkButton
    Protected WithEvents ibSignOut As System.Web.UI.WebControls.ImageButton
    Protected WithEvents lblUpload As System.Web.UI.WebControls.Label
    Protected WithEvents lblExplorer As System.Web.UI.WebControls.Label
    Protected WithEvents lblVpath1 As System.Web.UI.WebControls.Label
    Protected WithEvents File3 As System.Web.UI.HtmlControls.HtmlInputFile

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
        ''''Pending: cdwrite karne ke pehle server.mappath change karna hai 1. pagload 2. open button 3. uponelevel button 4.pageload of webedit.aspx
        '5. admin.aspx  Click_GridHost, gethostname() , deleterecord() , loadHost() , loadfeedback()
        ''' feedback.aspx me database ka path virtual folder se map nahi ho reha hai shayad yahan
        '' server.mappath("") & "\ekasmin.mdb" likhna hai ---- sahi bola
        ''' login database address 1.default.aspx me 2.register.aspx me submit button me jitne function call hue hain + new folder ka path
        If Session("hostid") = "" Then 'Session.IsNewSession Then
            Response.Redirect("default.aspx?requestedpage=filemgr.aspx")
            Return
        End If

        If Not (Page.IsPostBack) Then

            lblHost.Text = Session("hostid")
            ''' pwd has "\user"
            '' main true path "c:\inetpub\wwwroot\ekasmin\user" ko bolunga aur
            '' virtual path "www.ekasmin.com\user"
            lblPath.Text = Server.MapPath("") ' "D:\inetpub\wwwroot\ekasmin2"  ' Server.MapPath("") 'also change in open
            lblPath.Text = lblPath.Text & Session("pwd") 'Request.Params("pwd")
            lblVirtualpath.Text = "www.ekasmin.com" & Session("pwd")
            lblVpath1.Text = lblVirtualpath.Text
            If System.IO.Directory.Exists(lblPath.Text) = False Then
                Response.Redirect("default.aspx?errmssg=" & "Sorry, user " & lblPath.Text & " not found.")
                Session.Abandon()
                Return
            End If
            '''' now fill explorer with list of pwd
            Call folderscanner()
            Call filescanner()

            Span1.InnerHtml = "Select the files and click on <b>Upload</b> button to upload files in folder <b> " & lblVirtualpath.Text & "</b>"
            Span2.InnerHtml = "You can delete files and folders. Also create NewFolder and Edit existing files"
        End If
    End Sub
    Function extractName(ByVal str As String, ByVal c As Char) As String
        '' input  images*.....folders 4 ........ files.......3 last access 23/4/1203
        '' output images
        '' for folder c= *        ''for file  c = ^
        Dim start As Integer
        Dim last As Integer
        Dim length As Integer
        If c = "*" Then
            start = InStr(str, "<B>", CompareMethod.Text)
            last = InStr(str, "</B>", CompareMethod.Text)
            start = start + 3
            length = last - start

        Else
            start = InStr(str, ">", CompareMethod.Text)
            last = InStr(str, "^", CompareMethod.Text)
            start = start + 1
            length = last - start

        End If
        extractName = Mid(str, start, length)

    End Function

    Public Sub folderscanner()
        'Dim fso
        'fso = CreateObject("Scripting.FileSystemObject")
        'fso.createfolder("d:\pik")
        'Dim f
        'f = fso.GetFolder(lblPath.Text)
        chkFolder.Items.Clear()
        Dim listfolder As Array   ''' lblpath ke andar jitne bhi folder hai unke naam rakhega.....
        'lblPath.Text = "D:\inetpub\wwwroot\ekasmin2"
        'System.IO.Directory.SetCurrentDirectory(lblPath.Text)
        ' Span1.InnerHtml = d.GetDirectories()
        listfolder = System.IO.Directory.GetDirectories(lblPath.Text)
        Dim i
        Dim folddetail As String ''' foldername    totalsubfolders   totalfiles   lastmodify
        Dim n As Array
        '''' ab ek ek folder ki detail nikalni hai
        For i = 0 To (listfolder.Length - 1)
            folddetail = "<font face=arial size=3 color=yellow><B>" & System.IO.Path.GetFileName(listfolder(i)) & "</B>"  'foldername
            ' ye jo font tag hai wo bhi prepand and appand ho jayega folder name ke sath.. if u modify here be ware to modify at folderscnner and filescanner function also
            'pata nahi kya kar reha hoon par sahi kaam kar reha hai. i m intrested to extract the
            'THE Folder from path


            n = System.IO.Directory.GetDirectories(listfolder(i))  'o/p  3
            folddetail = folddetail & "*...... <font color=blue size=2> SubFolders: " & n.Length           'total subfolders"
            n = System.IO.Directory.GetFiles(listfolder(i))   'o/p 5

            folddetail = folddetail & "......  Files: " & n.Length & "</font><font color=magenta size=2>"     'total files
            folddetail = folddetail & "......  LastAccess: " & System.IO.Directory.GetLastAccessTime(listfolder(i)) & "</font></font>"    'last modified  24/03/05
            '    Dim tRow As New TableRow()
            ' Dim tCell As New TableCell()
            'tRow.Cells.Add(tCell)
            chkFolder.Items.Add(folddetail)
            ''Dim l As Label = New Label()
            ''l.Text = folddetail
            ''           Panel1.Controls.Add(l)
            ''         Panel1.Controls.Add(New LiteralControl("<br>"))

            'tCell.Text = folddetail
            'tblDetail.Rows.Add(tRow)

        Next

    End Sub
    Public Sub filescanner()
        chkFile.Items.Clear()
        Dim listfile As Array   ''' lblpath ke andar jitne bhi filer hai unke naam rakhega.....
        'lblPath.Text = "D:\inetpub\wwwroot\ekasmin2"
        listfile = System.IO.Directory.GetFiles(lblPath.Text)
        Dim i
        Dim filedetail As String ''' lastmodify
        Dim n As Array
        For i = 0 To (listfile.Length - 1)
            filedetail = "<font face=arial size=2>" & System.IO.Path.GetFileName(listfile(i))   'foldername
            Dim f As New System.IO.FileInfo(listfile(i))
            filedetail = filedetail & "^_____<font color=blue size=2>  Size: " & System.Math.Ceiling(f.Length() / 1024) & " KB</font>"
            filedetail = filedetail & "______<font color=magenta size=2>  LastAccess: " & f.LastWriteTime() & "</font></font>"          'last modified
            chkFile.Items.Add(filedetail)


        Next

    End Sub

    Private Sub Button1_ServerClick(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub LinkButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub


    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

        Call folderscanner()

        Call filescanner()

    End Sub

    Private Sub chkExplorer_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

        'Span1.InnerHtml = "Hi i m " & chkExplorer.SelectedItem.Text
    End Sub

    Private Sub ibUp_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ibUp.Click
        ''' pwd will set to "\user\images" from "\user\images\pic"
        Dim pos As Integer
        pos = InStrRev(Session("pwd"), "\", , CompareMethod.Text)

        Session("pwd") = Mid(Session("pwd"), 1, pos - 1)
        lblPath.Text = Server.MapPath("")  '"D:\inetpub\wwwroot\ekasmin2"  ' Server.MapPath("")
        lblPath.Text = lblPath.Text & Session("pwd") 'Request.Params("pwd")
        lblVirtualpath.Text = "www.ekasmin.com" & Session("pwd")
        lblVpath1.Text = lblVirtualpath.Text
        Call folderscanner()
        Call filescanner()

        Span1.InnerHtml = "Select the files and click on <b>Upload</b> button to upload files in folder <b> " & lblVirtualpath.Text & "</b>"
        Span2.InnerHtml = "You can delete files and folders. Also create NewFolder and Edit existing files"
        'now check that if u r in pwd="\user" then disable one level up
        pos = InStrRev(Session("pwd"), "\", , CompareMethod.Text)
        If Mid(Session("pwd"), pos + 1) = Session("hostid") Then
            ibUp.Enabled = False
        End If

    End Sub
    Private Sub btnOpen_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnOpen.Click
        Dim pos As Integer
        pos = InStrRev(Session("pwd"), "\", , CompareMethod.Text)
        If Mid(Session("pwd"), pos + 1) = Session("hostid") Then
            ibUp.Enabled = True
        End If
        If chkFolder.SelectedIndex > -1 Then
            ''' pwd will set to "\user\images
            Session("pwd") = Session("pwd") & "\" & extractName(chkFolder.SelectedItem.Text, "*")
            lblPath.Text = Server.MapPath("") '"D:\inetpub\wwwroot\ekasmin2"  ' Server.MapPath("")
            lblPath.Text = lblPath.Text & Session("pwd") 'Request.Params("pwd")
            lblVirtualpath.Text = "www.ekasmin.com" & Session("pwd")
            lblVpath1.Text = lblVirtualpath.Text
            Call folderscanner()
            Call filescanner()

            Span1.InnerHtml = "Select the files and click on <b>Upload</b> button to upload files in folder <b> " & lblVirtualpath.Text & "</b>"
            Span2.InnerHtml = "You can delete files and folders. Also create NewFolder and Edit existing files"

            '            Span1.InnerHtml = "hi i m " & extractName(chkFolder.SelectedItem.Text, "*")
        Else
            Span2.InnerHtml = "Please select any folder to Open...."
        End If
    End Sub



    Private Sub btnDelete_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Dim i
        Dim msg As String
        'code to recursively delete the subfolder and files in selected folders
        msg = "Successfully Deleted Folders : "
        If chkFolder.SelectedIndex > -1 Then
            For i = 0 To chkFolder.Items.Count - 1
                If chkFolder.Items(i).Selected Then
                    Dim TheFolder As String = extractName(chkFolder.Items(i).Text, "*")
                    'Span1.InnerHtml = lblPath.Text & "\" & extractName(chkFolder.SelectedItem.Value, "*")
                    If System.IO.Directory.Exists(lblPath.Text & "\" & TheFolder) Then
                        System.IO.Directory.Delete(lblPath.Text & "\" & TheFolder, True)
                        msg = msg & TheFolder & ", "
                    End If
                End If
            Next
        Else
            msg = "Please select folders " ''-fail msg
        End If
        'code to delete selected files 

        If chkFile.SelectedIndex > -1 Then
            msg = msg & " . Files : "
            For i = 0 To chkFile.Items.Count - 1
                Dim TheFile As String = extractName(chkFile.Items(i).Text, "^")
                If chkFile.Items(i).Selected Then
                    ' msg = msg & " ^^^ " & chkFile.Items(i).Text
                    If System.IO.File.Exists(lblPath.Text & "\" & TheFile) Then
                        System.IO.File.Delete(lblPath.Text & "\" & TheFile)
                        msg = msg & TheFile & ", "
                    End If
                End If
            Next
        Else
            msg = msg & " and files to Delete"      ''-fail msg
        End If
        Span2.InnerHtml = msg
        Call folderscanner()
        Call filescanner()
    End Sub

    Private Sub ibSignOut_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ibSignOut.Click
        Session.Abandon()
        Session("hostid") = ""
        Response.Redirect("default.aspx?requestedpage=filemgr.aspx")

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub btnUpload_ServerClick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnUpload.ServerClick

    End Sub

    Private Sub ibNew_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs)

    End Sub

    Private Sub btnNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNew.Click
        txtFolderName.Visible = True
        btnCreate.Visible = True
        btnNew.Enabled = False
    End Sub

    Private Sub btnCreate_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCreate.Click
        If Not (Trim(txtFolderName.Text) = "") Then
            System.IO.Directory.CreateDirectory(lblPath.Text & "\" & txtFolderName.Text)
            txtFolderName.Visible = False
            btnCreate.Visible = False
            btnNew.Enabled = True
            Span2.InnerHtml = "New Folder " & txtFolderName.Text & " created successfully"
            Call folderscanner()
            Call filescanner()
        End If
    End Sub

    Private Sub btnEdit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnEdit.Click
        If chkFile.SelectedIndex > -1 Then
            Response.Redirect("webedit.aspx?openfile=" & extractName(chkFile.SelectedItem.Text, "^"))
        Else
            Span2.InnerHtml = "Please Select files to delete" 'Response.Redirect("webedit.aspx")
        End If
    End Sub

    Private Sub btnNewFile_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNewFile.Click
        Response.Redirect("webedit.aspx")
    End Sub

    Private Sub lbSignOut_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbSignOut.Click
        Session.Abandon()
        Session("hostid") = ""
        Response.Redirect("default.aspx?requestedpage=filemgr.aspx")
    End Sub
End Class
