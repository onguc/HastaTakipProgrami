<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Rapor.aspx.cs" Inherits="firat.Rapor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script type="text/javascript">
    function SayiKontrol(e) {
        olay = document.all ? window.event : e;
        tus = document.all ? olay.keyCode : olay.which;
        if (tus < 48 || tus > 57) {
        if (document.all) { olay.returnValue = false; } else { olay.preventDefault(); }
     }
     }     
</script>

    <style type="text/css">
        .style9
        {
            width: 137px;
            height: 37px;
        }
        .style10
        {
            width: 179px;
            height: 37px;
        }
        .style12
        {
            width: 133px;
            height: 37px;
        }
        .style13
        {
            font-weight: bold;
            text-align: right;
            width: 137px;
            height: 49px;
        }
        .style14
        {
            width: 179px;
            height: 49px;
        }
        .style15
        {
            font-weight: bold;
            text-align: right;
            width: 133px;
            height: 49px;
        }
        .style16
        {
            height: 49px;
        }
        .style17
        {
            font-weight: bold;
            text-align: right;
            width: 137px;
            height: 44px;
        }
        .style18
        {
            width: 179px;
            height: 44px;
        }
        .style19
        {
            font-weight: bold;
            text-align: right;
            width: 133px;
            height: 44px;
        }
        .style20
        {
            height: 44px;
        }
        .style21
        {
            font-weight: bold;
            text-align: right;
            width: 137px;
            height: 42px;
        }
        .style22
        {
            width: 179px;
            height: 42px;
        }
        .style23
        {
            font-weight: bold;
            text-align: right;
            width: 133px;
            height: 42px;
        }
        .style24
        {
            height: 42px;
        }
        .style25
        {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style21">
                TC-Kimlik No:</td>
            <td class="style22">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCCC" Height="30px" 
                    Width="180px" MaxLength="11" onKeyPress="SayiKontrol(event)"></asp:TextBox>
            </td>
            <td class="style23">
                Adı Soyadı:</td>
            <td class="style24">
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCCCCC" Height="30px" 
                    Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
                Doğum Tarihi:</td>
            <td class="style22">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC" Height="30px" 
                    Width="180px"></asp:TextBox>
            </td>
            <td class="style23">
                Protokol No:</td>
            <td class="style24">
                <asp:TextBox ID="TextBox6" runat="server" BackColor="#CCCCCC" Height="30px" 
                    Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Rapor Tarihi:</td>
            <td class="style18">
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC" Height="30px" 
                    Width="180px"></asp:TextBox>
            </td>
            <td class="style19">
                Rapor Bitiş Tarihi:</td>
            <td class="style20">
                <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCCCCC" Height="30px" 
                    Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                İstirahat Süresi:</td>
            <td class="style14">
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCCC" Height="30px" 
                    Width="180px"></asp:TextBox>
            </td>
            <td class="style15">
                Hasta Tanı:</td>
            <td class="style16">
                <asp:TextBox ID="TextBox8" runat="server" BackColor="#CCCCCC" Height="30px" 
                    Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style10">
                <asp:Button ID="Button1" runat="server" Height="35px"  
                    style="font-weight: 700; font-size: small; margin-left: 23px" 
                    Text="İstirahat Raporu" onclick="Button1_Click1"  />
            </td>
            <td class="style12">
                <asp:Button ID="Button2" runat="server" Height="35px"  
                    style="font-weight: 700; margin-right: 0px" Text="Sağlık Raporu" 
                    Width="130px" onclick="Button2_Click1" />
            </td>
            <td class="style25">
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
