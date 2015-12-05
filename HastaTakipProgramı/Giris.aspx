<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="firat.Giris" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-weight: bold;
            text-align: right;
            width: 158px;
            height: 58px;
        }
        .style3
        {
            width: 158px;
        }
        .style4
        {
            text-align: center;
            height: 60px;
        }
        .style5
        {
            width: 43px;
        }
        .style6
        {
            height: 60px;
        }
        .style8
        {
            font-weight: bold;
            text-align: right;
            width: 158px;
            height: 64px;
        }
        .style9
        {
            width: 43px;
            height: 64px;
        }
        .style10
        {
            height: 64px;
        }
        .style11
        {
            height: 58px;
        }
        .style12
        {
            width: 43px;
            height: 58px;
        }
        .style13
        {
            height: 60px;
            width: 248px;
        }
        .style14
        {
            height: 64px;
            width: 248px;
        }
        .style15
        {
            height: 58px;
            width: 248px;
        }
        .style16
        {
            width: 248px;
        }
        .style17
        {
            height: 48px;
        }
        .style18
        {
            width: 248px;
            height: 48px;
        }
        .style19
        {
            width: 158px;
            height: 48px;
        }
        .style20
        {
            width: 43px;
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style6">
                </td>
                <td class="style6">
                </td>
                <td class="style13">
                </td>
                <td bgcolor="#CCCCCC" class="style4" colspan="2" style="border-style: groove">
                    <b>YÖNETİCİ GİRİŞİ</b></td>
                <td class="style6">
                </td>
                <td class="style6">
                </td>
                <td class="style6">
                </td>
            </tr>
            <tr>
                <td class="style10">
                </td>
                <td class="style10">
                </td>
                <td class="style14">
                </td>
                <td bgcolor="#CCCCCC" class="style8" style="border-style: groove">
                    <asp:Image ID="Image1" runat="server" Height="36px" 
                        ImageUrl="~/image/indir.jpg" Width="42px" />
                    Kullanıcı Adı:</td>
                <td bgcolor="#CCCCCC" class="style9" style="border-style: groove">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="180px"></asp:TextBox>
                </td>
                <td class="style10">
                </td>
                <td class="style10">
                </td>
                <td class="style10">
                </td>
            </tr>
            <tr>
                <td class="style11">
                </td>
                <td class="style11">
                </td>
                <td class="style15">
                </td>
                <td bgcolor="#CCCCCC" class="style2" style="border-style: groove">
                    <asp:Image ID="Image2" runat="server" Height="38px" 
                        ImageUrl="~/image/images.jpg" Width="36px" />
                    Şifre:</td>
                <td bgcolor="#CCCCCC" class="style12" style="border-style: groove">
                    <asp:TextBox ID="TextBox2" runat="server" Height="23px"></asp:TextBox>
                </td>
                <td class="style11">
                </td>
                <td class="style11">
                </td>
                <td class="style11">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td bgcolor="#CCCCCC" class="style3" style="border-style: groove">
                    &nbsp;</td>
                <td bgcolor="#CCCCCC" class="style5" style="border-style: groove">
                    <asp:Button ID="Button1" runat="server" Height="47px" onclick="Button1_Click" 
                        style="font-weight: 700; margin-left: 49px" Text="Giriş" Width="74px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                </td>
                <td class="style17">
                </td>
                <td class="style18">
                </td>
                <td bgcolor="#CCCCCC" class="style19" style="border-style: groove">
                </td>
                <td bgcolor="#CCCCCC" class="style20" style="border-style: groove">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="style17">
                </td>
                <td class="style17">
                </td>
                <td class="style17">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
