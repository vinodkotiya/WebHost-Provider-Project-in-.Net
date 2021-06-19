Public Class imail
    Inherits System.Web.UI.Page
    Protected WithEvents txtTo As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtSub As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEdit As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFrom As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblStatus As System.Web.UI.WebControls.Label
    Protected WithEvents File As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents txtCc As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtBcc As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents btnAuto As System.Web.UI.WebControls.Button
    Protected WithEvents btnSendmail As System.Web.UI.WebControls.Button
    Protected WithEvents txtFriendmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMymail As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSend As System.Web.UI.HtmlControls.HtmlInputButton

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
        ''page parameter inputs.. "sendto" "sendfrom" "loadtext"

        'if request from administrators page to imail do this
        If Request.Params("sendfrom") = "Admin" Then
            txtFrom.Text = "Administrator of Ekasmin.com"
            txtTo.Text = Request.Params("sendto")
            txtSub.Text = Request.Params("subject")

            txtEdit.Text = "Hi , " & vbCrLf & vbCrLf & "   " & txtSub.Text & vbCrLf & vbCrLf & vbCrLf & _
             vbCrLf & "______________________________________________ " & vbCrLf & _
              "      " & Request.Params("loadtext")

        End If
    End Sub


    Private Sub btnSend_ServerClick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSend.ServerClick

    End Sub

    Private Sub btnAuto_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAuto.Click
        txtFrom.Text = "vinodkotiya@yahoo.com"
        txtTo.Text = "pari4u20@yahoo.com"
        txtCc.Text = "thepandey@rediffmail.com"
        txtBcc.Text = "john_smith844@yahoo.co.in"
        txtSub.Text = "sample e mail"
        txtEdit.Text = "Hi," & vbCrLf & "  I am sending a sample email message to check the smtp server.Please do reply.."
    End Sub

    Private Sub ibHome_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("default.aspx")
    End Sub
End Class
