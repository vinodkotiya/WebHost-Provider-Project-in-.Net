Public Class admin
    Inherits System.Web.UI.Page
    Protected WithEvents dgHost As System.Web.UI.WebControls.DataGrid
    Protected WithEvents dgFeedback As System.Web.UI.WebControls.DataGrid
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents btnSendmail As System.Web.UI.WebControls.Button
    Protected WithEvents txtFriendmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMymail As System.Web.UI.WebControls.TextBox
    Protected WithEvents ibHome As System.Web.UI.WebControls.ImageButton
    Protected WithEvents lblAdmin As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label

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
        ' input Request.Params("pwd")  should contain the password to open this page  '"admin"
        If Not Request.Params("pwd") = "admin" Then
            lblAdmin.Text = "Please supply the password in parameters to open this page admin.aspx?pwd=****"
            Return
        End If
        If Not Page.IsPostBack Then
            loadHost()
            loadFeedback()
            lblAdmin.Text = "Administrator"
            Label3.Text = "load successfull"
        End If
    End Sub

    Private Sub dgHost_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dgHost.SelectedIndexChanged

    End Sub
    Function deleteRecord(ByVal mysql As String) As Boolean
        ' Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")

        Dim DBcmd As New OleDb.OleDbCommand(mysql, DBconn)
        Try

            DBcmd.Connection.Open()
            DBcmd.ExecuteNonQuery()
            DBcmd.Connection.Close()
            deleteRecord = True


        Catch exc As Exception

            DBcmd.Connection.Close()
            Label3.Text = exc.Message & mysql
            deleteRecord = False
        End Try
    End Function
    Function getHostname(ByVal mysql As String) As String

        'Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")
        Dim DBcmd As OleDb.OleDbCommand = New OleDb.OleDbCommand(mysql, DBconn)
        DBcmd.Connection.Open()
        Try
            Dim daHost As New OleDb.OleDbDataAdapter()
            daHost.SelectCommand = DBcmd
            Dim dsData As New Data.DataSet()
            daHost.Fill(dsData, "currHost")
            Dim hname As String
            hname = dsData.Tables("currHost").Rows.Item(0).Item(0)  'count
            DBcmd.Connection.Close()
            If Trim(hname) = "" Then
                hname = "nai mila"  'aisa karna pada kunki blank return karne par pichli bar pura project delete ho gaya
            End If
            Label3.Text = mysql & hname
            getHostname = hname

        Catch exc As Exception
            Label3.Text = exc.Message & DBcmd.CommandText
            DBcmd.Connection.Close()
            getHostname = "nai mila"
        End Try

    End Function
    Public Sub Click_GridHost(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)


        If E.CommandSource.CommandName = "remove" Then
            Dim hostname = getHostname("Select host from users where hostid=" & E.Item.Cells(1).Text)
            If deleteRecord("delete * from users where hostid=" & E.Item.Cells(1).Text) And deleteRecord("delete * from usersdtl where hostid=" & E.Item.Cells(1).Text) Then
                'now delete coresponding folder

                Dim tpath As String = Server.MapPath("") ' "D:\inetpub\wwwroot\ekasmin2"
                Label3.Text = Label3.Text & tpath & "\" & hostname
                If System.IO.Directory.Exists(tpath & "\" & hostname) Then
                    System.IO.Directory.Delete(tpath & "\" & hostname, True)
                End If
                Label3.Text = "Record deleted successfully"
                loadHost()
            Else
                Label3.Text = "Unable to delete record" & Label3.Text
            End If
            ' Response.Redirect("./default.aspx?hostid=" & E.Item.Cells(2).Text)
        ElseIf E.CommandSource.CommandName = "imailhost" Then
            Label3.Text = E.Item.Cells(13).Text   'the invisiblefield to keep email adress
            Dim subject As String = "Regarding your Ekasmin webhost account. "
            Response.Redirect("./imail.aspx?sendfrom=Admin" & "&sendto=" & E.Item.Cells(13).Text & "&subject=" & subject)

        End If

    End Sub
    Public Sub Click_GridFeedback(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        If E.CommandSource.CommandName = "delete" Then
            Label3.Text = "delete * from feedback where name='" & E.Item.Cells(1).Text & "' and ftime='" & E.Item.Cells(2).Text & "'"
            '   Response.Redirect("./default.aspx?hostid=" & E.Item.Cells(2).Text)
            If deleteRecord("delete * from feedback where name='" & E.Item.Cells(1).Text & "' and ftime='" & E.Item.Cells(2).Text & "'") Then
                Label3.Text = "Record deleted successfully"
                loadFeedback()
            Else
                Label3.Text = "Unable to delete record" & Label3.Text
            End If
        ElseIf E.CommandSource.CommandName = "imail" Then
            Label3.Text = E.Item.Cells(10).Text  'the invisiblefield to keep email adress
            Dim subject As String = "Regarding your feedback for " & E.Item.Cells(4).Text
            Dim loadtext As String ''' intial text to be loaded in imail editor
            loadtext = E.Item.Cells(1).Text & " wrote : " & E.Item.Cells(6).Text
            Response.Redirect("./imail.aspx?sendfrom=Admin" & "&sendto=" & E.Item.Cells(10).Text & "&subject=" & subject & "&loadtext=" & loadtext)

        End If

    End Sub

    Private Sub loadHost()

        'Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")
        Dim DBcmd As OleDb.OleDbCommand = New OleDb.OleDbCommand("select * from usersdtl", DBconn)
        DBcmd.Connection.Open()
        Try
            Dim daHost As New OleDb.OleDbDataAdapter()
            daHost.SelectCommand = DBcmd
            Dim dsData As New Data.DataSet()
            daHost.Fill(dsData, "currDtl")
            dgHost.DataSource = dsData.Tables("currDtl").DefaultView
            dgHost.DataBind()
            DBcmd.Connection.Close()
        Catch exc As Exception
            ' lblExist.Text = exc.Message & DBcmd.CommandText
            DBcmd.Connection.Close()
        End Try

    End Sub

    Private Sub loadFeedback()

        'Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")
        Dim DBcmd As OleDb.OleDbCommand = New OleDb.OleDbCommand("select * from feedback", DBconn)
        DBcmd.Connection.Open()
        Try
            Dim daFeedBack As New OleDb.OleDbDataAdapter()
            daFeedBack.SelectCommand = DBcmd
            Dim dsData As New Data.DataSet()
            daFeedBack.Fill(dsData, "currFbck")
            dgFeedback.DataSource = dsData.Tables("currFbck").DefaultView
            dgFeedback.DataBind()
            DBcmd.Connection.Close()


        Catch exc As Exception
            ' lblExist.Text = exc.Message & DBcmd.CommandText
            DBcmd.Connection.Close()
        End Try
    End Sub

    

   
    Private Sub btnSendmail_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSendmail.Click

    End Sub
End Class
