Public Class pportal
    Inherits System.Web.UI.Page
    Protected WithEvents ddlBgi As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnChange As System.Web.UI.WebControls.Button
    Protected WithEvents lblWel As System.Web.UI.WebControls.Label
    Protected WithEvents lblpp As System.Web.UI.WebControls.Label
    Protected WithEvents panLink As System.Web.UI.WebControls.Panel
    Protected WithEvents panPoll As System.Web.UI.WebControls.Panel
    Protected WithEvents RadioButtonList1 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents txtUser As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSignIn As System.Web.UI.WebControls.Button
    Protected WithEvents panAd As System.Web.UI.WebControls.Panel
    Protected WithEvents panWhatsnew As System.Web.UI.WebControls.Panel
    Protected WithEvents panNow As System.Web.UI.WebControls.Panel
    Protected WithEvents lblNow As System.Web.UI.WebControls.Label
    Protected WithEvents panInfo As System.Web.UI.WebControls.Panel
    Protected WithEvents chkSettings As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents ddlTextcolor As System.Web.UI.WebControls.DropDownList
    Protected WithEvents lblBug As System.Web.UI.WebControls.Label
    Protected WithEvents panWeather As System.Web.UI.WebControls.Panel
    Protected WithEvents lblBgi As System.Web.UI.WebControls.Label
    Protected WithEvents lblText As System.Web.UI.WebControls.Label
    Protected WithEvents panBack As System.Web.UI.WebControls.Panel

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
        lblNow.Text = Now()

    End Sub

   

    Private Sub btnChange_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnChange.Click
        setSettings(chkSettings.Items(0).Selected, chkSettings.Items(1).Selected, chkSettings.Items(2).Selected, chkSettings.Items(3).Selected, chkSettings.Items(4).Selected, chkSettings.Items(5).Selected, chkSettings.Items(6).Selected, ddlBgi.SelectedItem.Text, ddlTextcolor.SelectedItem.Text)
        '     changeTextColor(ddlTextcolor.SelectedItem.Text)
        '    panBack.BackImageUrl = Server.MapPath("") & "\bgi\" & ddlBgi.SelectedItem.Text
        '   lblBug.Text() = Server.MapPath("") & "\bgi\" & ddlBgi.SelectedItem.Text
    End Sub

    Private Sub changeTextColor(ByVal textcol As String)
        Dim c As System.Drawing.Color
        panAd.ForeColor = c.FromName(textcol)
        panWeather.ForeColor = c.FromName(textcol)
        panPoll.ForeColor = c.FromName(textcol)
        panLink.ForeColor = c.FromName(textcol)
        panNow.ForeColor = c.FromName(textcol)
        panWhatsnew.ForeColor = c.FromName(textcol)
        panInfo.ForeColor = c.FromName(textcol)
        lblBgi.ForeColor = c.FromName(textcol)
        lblText.ForeColor = c.FromName(textcol)
        btnChange.ForeColor = c.FromName(textcol)
        chkSettings.ForeColor = c.FromName(textcol)
        lblWel.ForeColor = c.FromName(textcol)
        btnSignIn.ForeColor = c.FromName(textcol)
        txtUser.ForeColor = c.FromName(textcol)
    End Sub

    Private Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Unload
        updateSettings(chkSettings.Items(0).Selected, chkSettings.Items(1).Selected, chkSettings.Items(2).Selected, chkSettings.Items(3).Selected, chkSettings.Items(4).Selected, chkSettings.Items(5).Selected, chkSettings.Items(6).Selected, ddlBgi.SelectedItem.Text, ddlTextcolor.SelectedItem.Text)
    End Sub
    Function getNextUid() As Integer
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBcmd As OleDb.OleDbCommand = New OleDb.OleDbCommand("select  max(uid) from pportal", DBconn)  'host
        DBcmd.Connection.Open()
        Try
            Dim daHost As New OleDb.OleDbDataAdapter()
            daHost.SelectCommand = DBcmd
            Dim dsData As New Data.DataSet()
            daHost.Fill(dsData, "currUser")
            Dim nextid As Integer
            nextid = dsData.Tables("currUser").Rows.Item(0).Item(0)  'count
            DBcmd.Connection.Close()
            getNextUid = nextid + 1

        Catch exc As Exception
            lblBug.Text = exc.Message & DBcmd.CommandText & exc.HelpLink
            DBcmd.Connection.Close()
        End Try
    End Function
    Function insertNewUser(ByVal usernm As String) As Boolean
        Dim uid As Integer = getNextUid()
        Dim mysql As String = "Insert Into pportal (uid, usernm, ad, weather, poll, link, dt, wnew , info , bgi , txtcol) values (" & _
                 uid & _
                ",'" & Replace(txtUser.Text, "'", "''") & "'" _
       & ", '" & chkSettings.Items(0).Selected & "'" _
        & ", '" & chkSettings.Items(1).Selected & "'" _
        & ", '" & chkSettings.Items(2).Selected & "'" _
        & ", '" & chkSettings.Items(3).Selected & "'" _
        & ", '" & chkSettings.Items(4).Selected & "'" _
        & ", '" & chkSettings.Items(5).Selected & "'" _
        & ", '" & chkSettings.Items(6).Selected & "'" _
        & ", '" & Replace(ddlBgi.SelectedItem.Text, "'", "''") & "'" _
       & ", '" & Replace(ddlTextcolor.SelectedItem.Text, "'", "''") & "')"
        
        ' Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")
        Dim DBcmd As New OleDb.OleDbCommand(mysql, DBconn)
        Try
            DBcmd.Connection.Open()
            DBcmd.ExecuteNonQuery()
            DBcmd.Connection.Close()
            lblBug.Text = "New user inserted"
            insertNewUser = True
        Catch exc As Exception
            lblBug.Text = exc.Message & DBcmd.CommandText & exc.HelpLink
            DBcmd.Connection.Close()
        End Try

    End Function
    Function updateSettings(ByVal ad As Boolean, ByVal weather As Boolean, ByVal poll As Boolean, ByVal link As Boolean, ByVal dt As Boolean, ByVal wnew As Boolean, ByVal info As Boolean, ByVal bgi As String, ByVal textcol As String) As Boolean
        Dim mysql As String = "Update pportal set " _
       & "uid=uid" _
       & ", usernm=usernm" _
       & ", ad='" & ad & "'" _
        & ", weather='" & weather & "'" _
        & ", poll='" & poll & "'" _
        & ", link='" & link & "'" _
        & ", dt='" & dt & "'" _
        & ", wnew='" & wnew & "'" _
        & ", info='" & info & "'" _
        & ", bgi='" & Replace(bgi, "'", "''") & "'" _
       & ", txtcol='" & Replace(textcol, "'", "''") & "'" _
       & "  Where usernm='" & Replace(txtUser.Text, "'", "''") & "'"
        lblBug.Text = mysql         '''" & "vinod" & "'" _
        'Response.Redirect("default.aspx?vin=" & lblBug.Text) 'are yaar dikha kuuuu nai ra

        ' Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")
        Dim DBcmd As OleDb.OleDbCommand = New OleDb.OleDbCommand(mysql, DBconn)
        Try
            DBcmd.Connection.Open()
            DBcmd.ExecuteNonQuery()
            DBcmd.Connection.Close()
        Catch exc As Exception
            lblBug.Text = exc.Message & DBcmd.CommandText
            DBcmd.Connection.Close()

        End Try
    End Function
    Function setSettings(ByVal ad As Boolean, ByVal weather As Boolean, ByVal poll As Boolean, ByVal link As Boolean, ByVal dt As Boolean, ByVal wnew As Boolean, ByVal info As Boolean, ByVal bgi As String, ByVal textcol As String) As Boolean
        'now assign the settings of user to controls
        chkSettings.Items(0).Selected = ad
        chkSettings.Items(1).Selected = weather
        chkSettings.Items(2).Selected = poll
        chkSettings.Items(3).Selected = link
        chkSettings.Items(4).Selected = dt
        chkSettings.Items(5).Selected = wnew
        chkSettings.Items(6).Selected = info
        lblBug.Text = ad & weather & poll & link & dt & wnew & info
        panAd.Visible = ad
        panWeather.Visible = weather
        panPoll.Visible = poll
        panLink.Visible = link
        panNow.Visible = dt
        panWhatsnew.Visible = wnew
        panInfo.Visible = info

        changeTextColor(textcol)

        panBack.BackImageUrl = Server.MapPath("") & "\bgi\" & bgi

    End Function
    Function getSettings(ByVal usernm As String) As Boolean
        'when user signin get the settings from database if user not found then insert new user with current view state
        Dim mysql As String = "Select * from pportal where usernm='" & usernm & "'"
        ' Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & "D:\inetpub\wwwroot\ekasmin2\ekasmin.mdb;")
        Dim DBconn = New OleDb.OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "DATA SOURCE=" & Server.MapPath("") & "\ekasmin.mdb;")
        Dim DBcmd As OleDb.OleDbCommand = New OleDb.OleDbCommand(mysql, DBconn)
        DBcmd.Connection.Open()
        Try
            Dim daHost As New OleDb.OleDbDataAdapter()
            daHost.SelectCommand = DBcmd
            Dim dsData As New Data.DataSet()
            daHost.Fill(dsData, "currUser")
            If Not (dsData.Tables("currUser").Rows.Count = 0) Then 'user  exist
                'now retrive the settings
                Dim sett As String
                setSettings(dsData.Tables("currUser").Rows.Item(0).Item(2), dsData.Tables("currUser").Rows.Item(0).Item(3), dsData.Tables("currUser").Rows.Item(0).Item(4), dsData.Tables("currUser").Rows.Item(0).Item(5), dsData.Tables("currUser").Rows.Item(0).Item(6), dsData.Tables("currUser").Rows.Item(0).Item(7), dsData.Tables("currUser").Rows.Item(0).Item(8), dsData.Tables("currUser").Rows.Item(0).Item(9), dsData.Tables("currUser").Rows.Item(0).Item(10))
                DBcmd.Connection.Close()
                'lblBug.Text = mysql & sett
                getSettings = True
            Else
                lblBug.Text = "user not exist so insert his settings now"
                DBcmd.Connection.Close()
                insertNewUser(usernm)
            End If
        Catch exc As Exception
            lblBug.Text = exc.Message & DBcmd.CommandText
            DBcmd.Connection.Close()
            getSettings = False
        End Try

    End Function
    Private Sub btnSignIn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSignIn.Click
        getSettings(txtUser.Text)
        'when user signin get the settings from database if user not found then insert new user with current view state
    End Sub




End Class
