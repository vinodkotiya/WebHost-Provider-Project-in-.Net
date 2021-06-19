Public Class _default
    Inherits System.Web.UI.Page
    Protected WithEvents txtMymail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFriendmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents panLogin As System.Web.UI.WebControls.Panel
    Protected WithEvents txtPwd As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSignIn As System.Web.UI.WebControls.Button
    Protected WithEvents txtHost As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblHost As System.Web.UI.WebControls.Label
    Protected WithEvents lblsign As System.Web.UI.WebControls.Label
    Protected WithEvents ibSignOut As System.Web.UI.WebControls.ImageButton
    Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
    Protected WithEvents TextBox1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents ibNew As System.Web.UI.WebControls.ImageButton
    Protected WithEvents lbSignOut As System.Web.UI.WebControls.LinkButton
    Protected WithEvents btnSendmail As System.Web.UI.WebControls.Button

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
        ''page parameter inputs.. "requestedpage"

        'kisi page me session expire ho gaya hai.. login kara ke wapas bhejne ke liye
        Session("requestedpage") = Request.Params("requestedpage")
        If Not (Session("hostid") = "") Then
            panLogin.Visible = False
            ibSignOut.Visible = True
            lbSignOut.Visible = True
        Else
            ibSignOut.Visible = False
            lbSignOut.Visible = False
            panLogin.Visible = True
            lblsign.Text = "Please First Sign In to start the service " & Session("requestedpage")
        End If
        lblHost.Text = Session("hostid")
    End Sub

    Private Sub ImageButton2_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs)

    End Sub

    Private Sub ImageButton1_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs)

    End Sub

    Private Sub lbHost_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("registr.aspx")
    End Sub

    Private Sub ibHost_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("registr.aspx")
    End Sub

    Private Sub ibImail_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("imail.aspx")
    End Sub

    Private Sub lbImail_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("imail.aspx")
    End Sub

    Private Sub lbFilemgr_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("filemgr.aspx")
    End Sub

    Private Sub ibFilemgr_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("filemgr.aspx")
    End Sub

    Private Sub ibPp_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs)

    End Sub
    Function authentifyUser(ByVal hostnm As String, ByVal pwd As String) As Boolean
        Dim mysql As String = "Select * from users where host='" & hostnm & "' and pwd='" & pwd & "'"
        'Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")

      
        Dim DBcmd As OleDb.OleDbCommand = New OleDb.OleDbCommand("select  host from users where host='" & hostnm & "' and pwd='" & pwd & "'", DBconn)
        DBcmd.Connection.Open()
        Try
            Dim daHost As New OleDb.OleDbDataAdapter()

            daHost.SelectCommand = DBcmd
            'Dim daHost  New OleDb.OleDbDataAdapter("select  host from users where host=' " & hostnm & "' and pwd='" & pwd & "'", DBconn)
            '       daHost.SelectCommand = DBcmd
            Dim dsData As New Data.DataSet()
            daHost.Fill(dsData, "currHost")

            ' TextBox1.Text = dsData.Tables("currHost").Rows.Count
            'now if 1 row is returned means user exists else user not verified.
            If (dsData.Tables("currHost").Rows.Count = 1) Then
                DBcmd.Connection.Close()
                lblsign.Text = ""
                authentifyUser = True

            Else
                DBcmd.Connection.Close()
                authentifyUser = False
                '            lblThanx.Text = "Thank You.... " & txtName.Text & " for your " & rblType.SelectedItem.Text
            End If


        Catch exc As Exception
            lblsign.Text = exc.Message & DBcmd.CommandText
            DBcmd.Connection.Close()
        End Try



    End Function
    Private Sub btnSignIn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSignIn.Click
        If authentifyUser(txtHost.Text, txtPwd.Text) Then
            Session("hostid") = txtHost.Text
            '''pwd bole to present working directory eg: "\user"
            Session("pwd") = "\" & Session("hostid")
            Session.Timeout = 7
            If Session("requestedpage") = "" Then
                Response.Redirect("default.aspx")
            Else
                Response.Redirect(Session("requestedpage"))     '2("filemgr.aspx") '1?hostname=" & System.Web.HttpUtility.UrlEncode(hostname.Text))
            End If

        Else
            txtHost.Text = ""
            txtPwd.Text = ""
            lblsign.Text = "Hostname or password not found. Please Sign In again."

        End If
    End Sub

    Private Sub ibSignOut_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ibSignOut.Click
        Session.Abandon()
        Session("hostid") = ""
        Response.Redirect("default.aspx")
    End Sub

    Private Sub ibNew_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ibNew.Click
        Response.Redirect("register.aspx")
    End Sub

    Private Sub btnSignOut_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub LinkButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbSignOut.Click

    End Sub

    Private Sub lbSignOut_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbSignOut.Click
        Session.Abandon()
        Session("hostid") = ""
        Response.Redirect("default.aspx")
    End Sub
End Class
