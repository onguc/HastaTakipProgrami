<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Randevu.aspx.cs" Inherits="firat.Randevu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script type="text/javascript">
    function SayiKontrol(e) 
    {
     olay = document.all ? window.event : e;
     tus = document.all ? olay.keyCode : olay.which;
     if (tus < 48 || tus > 57) 
     {
     if (document.all) { olay.returnValue = false; } else { olay.preventDefault(); }
     }
     }
</script>


    <style type="text/css">
        .style8
        {
            height: 43px;
        }
        .style9
        {
            width: 180px;
            height: 43px;
        }
        .style10
        {
            width: 113px;
            height: 43px;
        }
        .style11
        {
            width: 155px;
            height: 50px;
            text-align: right;
            font-weight: bold;
        }
        .style12
        {
            width: 180px;
            height: 50px;
        }
        .style13
        {
            width: 113px;
            height: 50px;
        }
        .style14
        {
            height: 50px;
        }
        .style15
        {
            width: 155px;
            height: 48px;
            text-align: right;
            font-weight: bold;
        }
        .style16
        {
            width: 180px;
            height: 48px;
        }
        .style17
        {
            width: 113px;
            height: 48px;
            text-align: right;
            font-weight: bold;
        }
        .style18
        {
            height: 48px;
        }
        .style19
        {
            width: 155px;
            height: 57px;
            text-align: right;
            font-weight: bold;
        }
        .style20
        {
            width: 180px;
            height: 57px;
        }
        .style21
        {
            width: 113px;
            height: 57px;
            text-align: right;
            font-weight: bold;
        }
        .style22
        {
            height: 57px;
        }
        .style23
        {
            height: 43px;
        }
        .style24
        {
            width: 113px;
            height: 50px;
            text-align: right;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="style1">
            <tr>
                <td class="style11">
                    TC Kimlik No:</td>
                <td class="style12">
                    <asp:TextBox ID="TextBoxTC" runat="server" BackColor="#CCCCCC" Height="30px" 
                        MaxLength="11" Width="180px" onKeyPress="SayiKontrol(event)"></asp:TextBox>
                </td>
                <td class="style13">
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Adı:</td>
                <td class="style12">
                    <asp:TextBox ID="TextBoxAdi" runat="server" BackColor="#CCCCCC" Height="30px" 
                        Width="180px" MaxLength="20"></asp:TextBox>
                </td>
                <td class="style24">
                    Soyadı:</td>
                <td class="style14">
                    <asp:TextBox ID="TextBoxSoyadi" runat="server" BackColor="#CCCCCC" Height="30px" 
                        Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    Sosyal Güvence Durumu:</td>
                <td class="style16">
                    <asp:DropDownList ID="DDLSGuvence" runat="server" BackColor="#CCCCCC" 
                        Height="30px" Width="180px">
                        <asp:ListItem Selected="True">Belirtilmemiş</asp:ListItem>
                        <asp:ListItem>SSK</asp:ListItem>
                        <asp:ListItem>Bağkur</asp:ListItem>
                        <asp:ListItem>Emekli Sandığı</asp:ListItem>
                        <asp:ListItem>Yeşil kart</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style17">
                    Poliklinik:</td>
                <td class="style18">
                    <asp:DropDownList ID="DDLPoliklinik" runat="server" BackColor="#CCCCCC" 
                        Height="30px" Width="180px">
                        <asp:ListItem Selected="True">Belirtilmemiş</asp:ListItem>
                        <asp:ListItem>Çocuk </asp:ListItem>
                        <asp:ListItem>Dahiliye</asp:ListItem>
                        <asp:ListItem>Nefroloji</asp:ListItem>
                        <asp:ListItem>Gastroenteroloji</asp:ListItem>
                        <asp:ListItem>KBB</asp:ListItem>
                        <asp:ListItem>Göz</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style19">
                    Randevu Tarihi:</td>
                <td class="style20">
                    <asp:TextBox ID="TextBoxRTarihi" runat="server" BackColor="#CCCCCC" Height="30px" 
                        Width="180px" MaxLength="10" onKeyUp="Tarih()"></asp:TextBox>
                </td>
                <td class="style21">
                    Randevu Saati:</td>
                <td class="style22">
                    <asp:TextBox ID="TextBoxRSaati" runat="server" BackColor="#CCCCCC" Height="30px" 
                        Width="180px" MaxLength="5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style9">
                    <asp:Button ID="Button1" runat="server" Height="42px" 
                        style="font-weight: 700; font-size: medium; margin-left: 41px" Text="Kaydet" 
                        Width="103px" onclick="Button1_Click" />
&nbsp;</td>
                <td class="style10">
                    <input id="Reset1" 
                        style="width: 125px; height: 42px; font-weight: 700; font-size: medium;" 
                        type="reset" value="Yeni Randevu" /></td>
                <td class="style23">
                    <asp:Button ID="Button2" runat="server" Height="42px" onclick="Button2_Click" 
                        style="font-weight: 700; font-size: medium; margin-left: 28px" Text="İptal" 
                        Width="90px" />
                </td>
            </tr>
            <tr>
                <td class="style8" colspan="4">
                    <asp:Label ID="LabelHata" runat="server" Font-Bold="True" 
                        Font-Names="Agency FB" Font-Size="14pt" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
        </table>
    <br />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
