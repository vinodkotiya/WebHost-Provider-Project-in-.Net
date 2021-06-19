Public Class register
    Inherits System.Web.UI.Page
    Protected WithEvents RangeValidator1 As System.Web.UI.WebControls.RangeValidator
    Protected WithEvents ddlCity As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents txtAddress As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents CompareValidator1 As System.Web.UI.WebControls.CompareValidator
    Protected WithEvents Label8 As System.Web.UI.WebControls.Label
    Protected WithEvents Label7 As System.Web.UI.WebControls.Label
    Protected WithEvents txtPwd As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents txtHost As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label6 As System.Web.UI.WebControls.Label
    Protected WithEvents txtretype As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label11 As System.Web.UI.WebControls.Label
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents ddlYear As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddlMonth As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ddlDate As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
    Protected WithEvents Label12 As System.Web.UI.WebControls.Label
    Protected WithEvents txtFone As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label13 As System.Web.UI.WebControls.Label
    Protected WithEvents txtCell As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label14 As System.Web.UI.WebControls.Label
    Protected WithEvents txtEmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label15 As System.Web.UI.WebControls.Label
    Protected WithEvents txtWeb As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.Button
    Protected WithEvents lblExist As System.Web.UI.WebControls.Label
    Protected WithEvents txtFname As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtLname As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtZip As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator5 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator8 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator9 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents btnSendmail As System.Web.UI.WebControls.Button
    Protected WithEvents txtFriendmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMymail As System.Web.UI.WebControls.TextBox
    Protected WithEvents HyperLink1 As System.Web.UI.WebControls.HyperLink

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
        'page input "auto"
        If Not (Page.IsPostBack) Then
            If Request.Params("auto") = 1 Then
                autofill()
            End If
        End If
    End Sub

    Function IsUserExists(ByVal hostnm As String) As Boolean

        'Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")

        Dim DBcmd As OleDb.OleDbCommand = New OleDb.OleDbCommand("select  host from users where host='" & hostnm & "'", DBconn)
        DBcmd.Connection.Open()
        Try
            Dim daHost As New OleDb.OleDbDataAdapter()
            daHost.SelectCommand = DBcmd
            Dim dsData As New Data.DataSet()
            daHost.Fill(dsData, "currHost")

            If (dsData.Tables("currHost").Rows.Count = 1) Then
                DBcmd.Connection.Close()
                lblExist.Text = "Sorry.. User already exists Please choose any different name"
                IsUserExists = True

            Else
                DBcmd.Connection.Close()
                lblExist.Text = "user not exist"
                IsUserExists = False

            End If


        Catch exc As Exception
            lblExist.Text = exc.Message & DBcmd.CommandText
            DBcmd.Connection.Close()
        End Try

    End Function
    Function getNextHostid() As Integer
        'Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")
        Dim DBcmd As OleDb.OleDbCommand = New OleDb.OleDbCommand("select  max(hostid) from users", DBconn)  'host
        DBcmd.Connection.Open()
        Try
            Dim daHost As New OleDb.OleDbDataAdapter()
            daHost.SelectCommand = DBcmd
            Dim dsData As New Data.DataSet()
            daHost.Fill(dsData, "currHost")
            Dim nextid As Integer
            nextid = dsData.Tables("currHost").Rows.Item(0).Item(0)  'count
            DBcmd.Connection.Close()
            getNextHostid = nextid + 1

        Catch exc As Exception
            lblExist.Text = exc.Message & DBcmd.CommandText
            DBcmd.Connection.Close()
        End Try
    End Function
    Function insertRecord(ByVal mysql As String) As Boolean
        'Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")

        Dim DBcmd As New OleDb.OleDbCommand(mysql, DBconn)
        Try

            DBcmd.Connection.Open()
            DBcmd.ExecuteNonQuery()
            DBcmd.Connection.Close()
            insertRecord = True


        Catch exc As Exception

            DBcmd.Connection.Close()
            lblExist.Text = exc.Message
            insertRecord = False
        End Try

    End Function
    Private Sub btnSubmit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If Trim(txtAddress.Text) = "" Then txtAddress.Text = "Nil"
        If Trim(txtFone.Text) = "" Then txtFone.Text = "Nil"
        If Trim(txtWeb.Text) = "" Then txtWeb.Text = "Nil"
        If Trim(txtCell.Text) = "" Then txtCell.Text = "Nil"
        If IsUserExists(txtHost.Text) = False Then
            '' now get next hostid to insert record
            Dim hostid As Integer
            hostid = getNextHostid()


            Dim sqlUsers As String = "Insert Into users (hostid, host, pwd) values (" & _
                hostid & "," & _
                "'" & Replace(txtHost.Text, "'", "''") & _
                "', " & "'" & Replace(txtPwd.Text, "'", "''") & "') "
            Dim sqlDetail As String = "Insert Into usersdtl (hostid, fname, lname, dob, address, city, zip, fone, cell, email, web) values (" & _
                     hostid & "," & _
                "'" & Replace(txtFname.Text, "'", "''") & "', " & _
                "'" & Replace(txtLname.Text, "'", "''") & "', " & _
                 "'" & ddlDate.SelectedItem.Text & ddlMonth.SelectedItem.Text & ddlYear.SelectedItem.Text & "', " & _
                "'" & Replace(txtAddress.Text, "'", "''") & "', " & _
                "'" & Replace(ddlCity.SelectedItem.Text, "'", "''") & "', " & _
                "'" & Replace(txtZip.Text, "'", "''") & "', " & _
                "'" & Replace(txtFone.Text, "'", "''") & "', " & _
                "'" & Replace(txtCell.Text, "'", "''") & "', " & _
                "'" & Replace(txtEmail.Text, "'", "''") & "', " & _
                "'" & Replace(txtWeb.Text, "'", "''") & "') "
            '' now insert host and password
            If insertRecord(sqlUsers) = False Then
                lblExist.Text = "Unable to insert in to users" & sqlUsers
                Return
            End If

            '' now insert host personal details 
            If insertRecord(sqlDetail) = False Then
                lblExist.Text = lblExist.Text & "Unable to insert in to usersdtl" & sqlDetail
                Return
            End If
            ''''' now create the new user folder
           
            Dim vpath As String = Server.MapPath("") ' "D:\inetpub\wwwroot\ekasmin2"
            Dim content As String = "<html><head><title> " & txtHost.Text & " Home Page " & _
            "</title></head>" & vbCrLf & "<body text=#FFFFFF bgcolor=#0066CC> " & vbCrLf & "   <h3> site is under construction </h3> <br>" & _
            vbCrLf & "<center> Site Owner is " & txtFname.Text & " " & txtLname.Text & "<br> Address:" & txtAddress.Text & _
                " , " & ddlCity.SelectedItem.Text & " <br> " & _
                "<br> Fone:" & txtFone.Text & "<br> Cell:" & txtCell.Text & _
                "<br> Email:" & txtEmail.Text & "</center> <br><br><br><br>" & vbCrLf & _
                "<marquee><a href=../default.aspx> www.Ekasmin.com </a></marquee>" & _
 vbCrLf & "</body></html>"
            'create new site  eg: www.ekasmin.com/host
            System.IO.Directory.CreateDirectory(vpath & "\" & txtHost.Text)
            'create new folder images  eg: www.ekasmin.com/host/images
            System.IO.Directory.CreateDirectory(vpath & "\" & txtHost.Text & "\images")
            'now create default webpages (index.html or default.aspx)for new site  eg: www.ekasmin.com/host
            Dim fno As Integer
            fno = FreeFile()
            FileOpen(fno, vpath & "\" & txtHost.Text & "\index.html", OpenMode.Output)
            Print(fno, content)
            FileClose()
            fno = FreeFile()
            FileOpen(fno, vpath & "\" & txtHost.Text & "\default.aspx", OpenMode.Output)
            Print(fno, content)
            FileClose()
            lblExist.Text = "new User " & txtHost.Text & "  created successfully"
            'now redirect to filemanager
            Session("hostid") = txtHost.Text
            '''pwd bole to present working directory eg: "\user"
            Session("pwd") = "\" & Session("hostid")
            Session.Timeout = 7
            Response.Redirect("filemgr.aspx")


        Else
            lblExist.Text = "Sorry Hostname Already Exist. Please choose any other name"
            txtHost.Text = ""
        End If
    End Sub

    Private Sub autofill()
        '' randomly fills the form

        Dim myrandom As New Random()
        Dim rname As String = "user" & CStr(myrandom.Next(1, 9999))
        txtHost.Text = rname
        'txtPwd.Text = name
        'txtretype.Text = name
        txtFname.Text = rname
        txtLname.Text = rname
        txtAddress.Text = rname & " gali kholi no 420"
        txtFone.Text = CStr(myrandom.Next(100, 2222) * 1760)
        txtCell.Text = CStr(myrandom.Next(100, 2424) * 1760)
        txtWeb.Text = "www.ekasmin.com\" & rname
        txtEmail.Text = rname & "@ekasmin.com"
        txtZip.Text = CStr(myrandom.Next(100, 2424) * 1760)


    End Sub

    Private Sub btnAuto_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("register.aspx?auto=1")
    End Sub
End Class
