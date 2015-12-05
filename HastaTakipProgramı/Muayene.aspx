<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Muayene.aspx.cs" Inherits="firat.Muayene" %>
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
        #Reset1
        {
            width: 131px;
            height: 40px;
            font-weight: 700;
            font-size: medium;
            margin-left: 68px;
        }
        .style7
        {
            width: 215px;
            font-weight: 700;
        }
        .style8
        {
            width: 215px;
            height: 64px;
        }
        .style9
        {
            height: 64px;
        }
        .style10
        {
            width: 169px;
            height: 64px;
        }
        .style11
        {
            width: 169px;
        }
        #TextArea1
        {
            height: 76px;
        }
        .style12
        {
            width: 215px;
            font-weight: 700;
            height: 45px;
            text-align: right;
        }
        .style13
        {
            width: 169px;
            height: 45px;
        }
        .style14
        {
            height: 45px;
        }
        .style15
        {
            width: 215px;
            font-weight: 700;
            height: 40px;
            text-align: right;
        }
        .style16
        {
            width: 169px;
            height: 40px;
        }
        .style18
        {
            width: 215px;
            font-weight: 700;
            height: 36px;
            text-align: right;
        }
        .style19
        {
            width: 169px;
            height: 36px;
        }
        .style20
        {
        }
        .style21
        {
            width: 95px;
            height: 64px;
        }
        .style22
        {
            width: 95px;
            font-weight: bold;
            text-align: right;
        }
        .style24
        {
            width: 95px;
            height: 45px;
            font-weight: bold;
            text-align: right;
        }
        .style25
        {
            width: 95px;
        }
        #TextArea2
        {
            height: 81px;
        }
        #TextArea3
        {
            height: 72px;
        }
        #TextArea4
        {
            height: 68px;
        }
        .style26
        {
            width: 215px;
            font-weight: 700;
            text-align: right;
        }
        #Reset2
        {
            width: 82px;
            height: 45px;
            font-weight: 700;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style10">
                <asp:Button ID="Button1" runat="server" Height="41px" onclick="Button1_Click" 
                    style="font-size: medium; font-weight: 700; margin-left: 27px" Text="Yeni Muayene" 
                    Width="146px" />
            </td>
            <td class="style21">
                <asp:Button ID="Button2" runat="server" Height="39px" 
                    style="font-weight: 700; font-size: medium; margin-left: 0px" Text="Rapor" 
                    Width="88px" onclick="Button2_Click" />
            </td>
            <td class="style9">
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; color: #990000; font-size: x-large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style18">
                TC</td>
            <td class="style19">
                <asp:TextBox ID="TextBoxTC" runat="server" BackColor="#CCCCCC" Height="25px" 
                    Width="180px" onKeyPress="SayiKontrol(event)" MaxLength="11"></asp:TextBox>
            </td>
            <td class="style22" rowspan="3">
                Öykü:</td>
            <td class="style20" rowspan="3">
                <asp:TextBox ID="TextBoxOyku" runat="server" TextMode="MultiLine" 
                    BackColor="#CCCCCC" Height="92px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style18">
                Muayene Başlangıç Zamanı:</td>
            <td class="style19">
                <asp:TextBox ID="TextBoxBaslangic" runat="server" BackColor="#CCCCCC" 
                    Font-Overline="False" Height="25px" Width="180px" BorderStyle="Groove" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                Kabul Şekli:</td>
            <td class="style16">
                <asp:DropDownList ID="DDLKabulSekli" runat="server" BackColor="#CCCCCC" 
                    Height="25px" Width="180px">
                    <asp:ListItem Selected="True">Diğer</asp:ListItem>
                    <asp:ListItem>Acil</asp:ListItem>
                    <asp:ListItem>Poliklinik</asp:ListItem>
                    <asp:ListItem>Aile Hekimliği</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style12">
                Vaka Türü:</td>
            <td class="style13">
                <asp:DropDownList ID="DDLVakaTuru" runat="server" BackColor="#CCCCCC" 
                    Height="25px" Width="180px">
                    <asp:ListItem Selected="True">Normal</asp:ListItem>
                    <asp:ListItem>Yaralı</asp:ListItem>
                    <asp:ListItem>Kaza</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style24">
                Tetkikler:</td>
            <td class="style14">
                <asp:TextBox ID="TextBoxTetkikler" runat="server" TextMode="MultiLine" 
                    BackColor="#CCCCCC" Height="63px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style26">
                Şikayetler:</td>
            <td class="style11">
                <asp:TextBox ID="TextBoxSikayetler" runat="server" TextMode="MultiLine" 
                    BackColor="#CCCCCC" Height="55px"></asp:TextBox>
            </td>
            <td class="style22">
                Teşhis:</td>
            <td>
                <asp:TextBox ID="TextBoxTeshis" runat="server" TextMode="MultiLine" 
                    BackColor="#CCCCCC" Height="54px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                <asp:Button ID="Button3" runat="server" Height="45px" 
                    style="font-weight: 700; font-size: medium; margin-left: 68px" Text="Kaydet" 
                    Width="90px" onclick="Button3_Click" />
            </td>
            <td class="style25">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" Height="45px" onclick="Button4_Click" 
                    style="font-weight: 700; font-size: medium" Text="İptal" Width="90px" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
