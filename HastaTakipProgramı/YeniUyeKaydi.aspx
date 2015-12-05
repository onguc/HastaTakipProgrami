<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YeniUyeKaydi.aspx.cs" Inherits="firat.deneme5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style2
        {
            width: 100%;
        }
        .style4
        {
            width: 176px;
        }
        .style5
        {
            font-size: medium;
            text-align: right;
            width: 176px;
            height: 49px;
        }
        .style6
        {
            height: 49px;
        }
        .style7
        {
            font-size: medium;
            text-align: right;
            width: 176px;
            height: 47px;
        }
        .style8
        {
            height: 47px;
        }
        .style9
        {
            font-size: medium;
            text-align: right;
            width: 176px;
            height: 43px;
        }
        .style10
        {
            height: 43px;
        }
        .style11
        {
            font-size: medium;
            text-align: right;
            width: 176px;
            height: 46px;
        }
        .style12
        {
            height: 46px;
        }
        .style13
        {
            font-size: medium;
            text-align: right;
            width: 176px;
            height: 44px;
        }
        .style14
        {
            height: 44px;
        }
        #Reset1
        {
            font-weight: 700;
            height: 41px;
            margin-left: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        YENİ ÜYE KAYDI<br />
        <table class="style2">
            <tr>
                <td class="style5">
                    Kullanıcı Adı:</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCCC" 
                        BorderColor="Black" Height="30px" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Lütfen adınızı giriniz!.." 
                        style="font-size: medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Şifre:</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC" 
                        BorderColor="Black" Height="30px" Width="180px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Lütfen Şifrenizi Giriniz!.." 
                        style="font-size: medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    Şifre Tekrarı:</td>
                <td class="style10">
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC" 
                        BorderColor="Black" Height="30px" Width="180px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" Display="Dynamic" 
                        ErrorMessage="Lütfen Şifrenizi Tekrar Giriniz!.." style="font-size: medium"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="Şifre aynı olmak zorundadır.." style="font-size: medium"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    E-Mail Adresi:</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCCC" 
                        BorderColor="Black" Height="30px" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" Display="Dynamic" 
                        ErrorMessage="Lütfen E-Mail Adresinizi Giriniz!.." style="font-size: medium"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox4" Display="Dynamic" 
                        ErrorMessage="Geçersiz E-mail adresi..." style="font-size: medium" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    Güvenlik Sorusu:</td>
                <td class="style14">
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCCCCC" 
                        Height="30px" Width="180px">
                        <asp:ListItem Selected="True">Belirtilmemiş</asp:ListItem>
                        <asp:ListItem>En sevdiğiniz Spor</asp:ListItem>
                        <asp:ListItem>En sevdiğiniz arkadaşınız</asp:ListItem>
                        <asp:ListItem>En sevdiğiniz yemek</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList1" 
                        ErrorMessage="Lütfen Güvenlik Sorusu Seçiniz!.." InitialValue="Belirtilmemiş" 
                        style="font-size: medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    Güvenlik Soru Cevabı:</td>
                <td class="style10">
                    <asp:TextBox ID="TextBox6" runat="server" BackColor="#CCCCCC" 
                        BorderColor="Black" Height="30px" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" 
                        ErrorMessage="Lütfen Güvenlik Sorusunun Cevabını giriniz!.." 
                        style="font-size: medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="41px" style="font-weight: 700" 
                        Text="Kullanıcı oluştur" Width="150px" onclick="Button1_Click" />
                    <input id="Reset1" type="reset" value="Temizle" /> </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
