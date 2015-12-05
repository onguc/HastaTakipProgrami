<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciGirisi.aspx.cs" Inherits="firat.default1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 70px;
        }
        .style3
        {
            height: 70px;
            width: 140px;
        }
        .style4
        {
            width: 140px;
        }
        .style5
        {
            width: 67px;
            height: 52px;
        }
        .style6
        {
        }
        .style7
        {
            width: 192px;
            text-align: right;
            height: 52px;
        }
        .style8
        {
            height: 35px;
        }
        .style9
        {
            width: 140px;
            height: 35px;
        }
        .style10
        {
            height: 48px;
        }
        .style11
        {
            width: 140px;
            height: 48px;
        }
        .style12
        {
            width: 67px;
            height: 48px;
        }
        .style13
        {
            height: 36px;
        }
        .style14
        {
            width: 140px;
            height: 36px;
        }
        .style15
        {
            height: 53px;
        }
        .style16
        {
            width: 140px;
            height: 53px;
        }
        .style17
        {
            width: 192px;
            text-align: right;
            height: 53px;
        }
        .style18
        {
            width: 67px;
            height: 53px;
        }
        .style19
        {
            height: 52px;
        }
        .style20
        {
            width: 140px;
            height: 52px;
        }
        .style21
        {
            height: 70px;
            font-size: x-large;
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
                <td class="style2">
                </td>
                <td class="style2">
                </td>
                <td class="style3">
                </td>
                <td class="style21" colspan="2" 
                    style="border-style: groove; font-weight: 700; text-align: center" 
                    bgcolor="#CCCCCC">
                    KULLANICI GİRİŞİ</td>
                <td class="style2">
                </td>
                <td class="style2">
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td class="style13">
                    </td>
                <td class="style13">
                    </td>
                <td class="style14">
                    </td>
                <td class="style13" colspan="2" style="border-style: groove" bgcolor="Silver">
                    </td>
                <td class="style13">
                    </td>
                <td class="style13">
                    </td>
                <td class="style13">
                    </td>
            </tr>
            <tr>
                <td class="style15">
                    </td>
                <td class="style15">
                    </td>
                <td class="style16">
                    </td>
                <td class="style17" style="border-style: groove" bgcolor="#CCCCCC">
                    <asp:Image ID="Image1" runat="server" Height="34px" 
                        ImageUrl="~/image/indir.jpg" Width="34px" />
&nbsp;&nbsp; <b>&nbsp;Kullanıcı Adı:</b></td>
                <td class="style18" style="border-style: groove" bgcolor="#CCCCCC">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="170px" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
                <td class="style15">
                    </td>
                <td class="style15">
                    </td>
                <td class="style15">
                    </td>
            </tr>
            <tr>
                <td class="style19">
                    </td>
                <td class="style19">
                    </td>
                <td class="style20">
                    </td>
                <td class="style7" style="border-style: groove" bgcolor="#CCCCCC">
                    <asp:Image ID="Image2" runat="server" Height="35px" 
                        ImageUrl="~/image/images.jpg" Width="33px" />
&nbsp; <b>Parola:</b></td>
                <td class="style5" style="border-style: groove" bgcolor="#CCCCCC">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="170px" 
                        BorderStyle="Solid" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style19">
                    </td>
                <td class="style19">
                    </td>
                <td class="style19">
                    </td>
            </tr>
            <tr>
                <td class="style10">
                    </td>
                <td class="style10">
                    </td>
                <td class="style11">
                    </td>
                <td class="style10" style="border-style: groove" bgcolor="#CCCCCC">
                    </td>
                <td class="style12" style="border-style: groove" bgcolor="#CCCCCC">
                    <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="38px" 
                        onclick="Button1_Click" 
                        style="text-align: center; font-weight: 700; margin-left: 45px" Text="GİRİŞ" 
                        Width="72px" />
                </td>
                <td class="style10">
                    </td>
                <td class="style10">
                    </td>
                <td class="style10">
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6" colspan="2" rowspan="3" style="border-style: groove" 
                    bgcolor="#CCCCCC">
                    <center>
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                        style="font-weight: 700; text-align: center" Font-Overline="False" 
                            NavigateUrl="~/deneme5.aspx" ForeColor="Black">Yeni Üye Kaydı</asp:HyperLink></center>
                   <center> 
                       <asp:HyperLink ID="HyperLink2" runat="server" 
                        style="font-weight: 700; text-align: center" Font-Overline="False" 
                           NavigateUrl="~/kullanici1.aspx" ForeColor="Black">Şifremi Unuttum</asp:HyperLink></center>
                   <center> <asp:Label ID="Label1" runat="server" style="text-align: center" 
                           ForeColor="#990000"></asp:Label></center>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    </td>
                <td class="style8">
                    </td>
                <td class="style9">
                    </td>
                <td class="style8">
                    </td>
                <td class="style8">
                    </td>
                <td class="style8">
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
