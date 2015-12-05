<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifreUnuttum.aspx.cs" Inherits="firat.kullanici1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: large;
            font-weight: bold;
        }
        .style2
        {
            text-align: center;
            height: 350px;
            width: 963px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style2">
    
        <span class="style1">
        <br />
        <br />
        <br />
        <br />
        Şifrenizi mi unuttunuz?<br />
        <br />
        Lütfen Kullanıcı Adınızı ve E-Mail Adresinizi Giriniz</span><br />
        <br />
        <b>Kullanıcı Adı: </b>
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCCC" ForeColor="White" 
            Height="32px" Width="180px"></asp:TextBox>
        <br />
        <br />
        <b>E-Mail Adresi:</b><asp:TextBox ID="TextBox2" runat="server" 
            BackColor="#CCCCCC" ForeColor="White" Height="32px" style="margin-bottom: 0px" 
            Width="180px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="38px" onclick="Button1_Click" 
            style="font-weight: 700; font-size: medium; margin-left: 78px" Text="Gönder" 
            Width="81px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
