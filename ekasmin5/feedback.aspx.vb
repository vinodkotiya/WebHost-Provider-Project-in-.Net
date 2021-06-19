Public Class feedback
    Inherits System.Web.UI.Page
    Protected WithEvents rblType As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents ddlAbout As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtComment As System.Web.UI.WebControls.TextBox
    Protected WithEvents chkUrgent As System.Web.UI.WebControls.CheckBox
    Protected WithEvents txtName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFone As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.Button
    Protected WithEvents lblThanx As System.Web.UI.WebControls.Label
    Protected WithEvents btnSendmail As System.Web.UI.WebControls.Button
    Protected WithEvents txtFriendmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMymail As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnClear As System.Web.UI.WebControls.Button

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
    End Sub

    Private Sub btnSubmit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSubmit.Click

        Dim mysql As String = "Insert Into feedback (ftype, fabout, comment, name, mail, fone, isurgent, ftime) values (" & _
         "'" & rblType.SelectedItem.Text & "', " & _
         "'" & ddlAbout.SelectedItem.Text & "', " & _
         "'" & Replace(txtComment.Text, "'", "''") & "', " & _
          "'" & Replace(txtName.Text, "'", "''") & "', " & _
         "'" & Replace(txtMail.Text, "'", "''") & "', " & _
         "'" & Replace(txtFone.Text, "'", "''") & "', " & _
         "'" & chkUrgent.Checked & "', " & _
         "'" & Now() & "') "

        '        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")

        Dim DBcmd As New OleDb.OleDbCommand(mysql, DBconn)
        

        Try
            DBcmd.Connection.Open()
            DBcmd.ExecuteNonQuery()

            lblThanx.Text = "Thank You.... " & txtName.Text & " for your " & rblType.SelectedItem.Text
            DBcmd.Connection.Close()
        Catch exc As Exception
            lblThanx.Text = exc.Message & DBcmd.CommandText
            DBcmd.Connection.Close()
        End Try
    End Sub

    Private Sub btnClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClear.Click
        lblThanx.Text = "Please Send your feedback to us for improving our quality of services....."
        txtComment.Text = ""
        txtName.Text = ""
        txtMail.Text = ""
        txtFone.Text = ""

    End Sub

    Private Sub ibHome_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("default.aspx")
    End Sub
End Class
