<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="istirahatraporu.aspx.cs" Inherits="firat.istirahatraporu" %>

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
            width: 402px;
        }
        .style3
        {
            width: 185px;
        }
        .style4
        {
            text-align: center;
            height: 90px;
        }
        .style6
        {
            width: 205px;
        }
        .style8
        {
            width: 402px;
            height: 90px;
        }
        .style9
        {
            height: 90px;
        }
        .style10
        {
            width: 402px;
            height: 32px;
        }
        .style11
        {
            height: 32px;
        }
        .style13
        {
            width: 205px;
            font-weight: bold;
            text-align: right;
            height: 36px;
        }
        .style14
        {
            width: 185px;
            height: 36px;
        }
        .style15
        {
            width: 402px;
            height: 36px;
        }
        .style16
        {
            height: 36px;
        }
        .style17
        {
            width: 402px;
            height: 31px;
        }
        .style18
        {
            width: 205px;
            font-weight: bold;
            text-align: right;
            height: 31px;
        }
        .style19
        {
            width: 185px;
            height: 31px;
        }
        .style20
        {
            height: 31px;
        }
        .style21
        {
            width: 205px;
            font-weight: bold;
            text-align: right;
            height: 32px;
        }
        .style22
        {
            width: 185px;
            height: 32px;
        }
        .style23
        {
            width: 402px;
            height: 34px;
        }
        .style24
        {
            width: 205px;
            font-weight: bold;
            text-align: right;
            height: 34px;
        }
        .style25
        {
            width: 185px;
            height: 34px;
        }
        .style26
        {
            height: 34px;
        }
        .style27
        {
            width: 402px;
            height: 33px;
        }
        .style28
        {
            width: 205px;
            font-weight: bold;
            text-align: right;
            height: 33px;
        }
        .style29
        {
            width: 185px;
            height: 33px;
        }
        .style30
        {
            height: 33px;
        }
        .style32
        {
            height: 45px;
            font-weight: bold;
            text-align: right;
        }
        .style33
        {
            width: 402px;
            height: 45px;
        }
        .style35
        {
            height: 45px;
        }
        .style36
        {
            width: 402px;
            height: 48px;
        }
        .style37
        {
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style8">
                </td>
                <td class="style4" colspan="2" style="border-style: solid">
                    <b>SAĞLIK BAKANLIĞI<br />
                    TECE 01 ASM<br />
                    33.00.001 NOLU AHB<br />
                    İSTİRAHAT RAPORU</b></td>
                <td class="style9">
                </td>
            </tr>
            <tr>
                <td class="style10">
                </td>
                <td class="style11" colspan="2" style="border-style: solid">
                    <b>HASTA BİLGİLERİ</b></td>
                <td class="style11">
                </td>
            </tr>
            <tr>
                <td class="style15">
                </td>
                <td class="style13" style="border-style: solid">
                    TC Kimlik No:</td>
                <td class="style14" style="border-style: solid">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="style16">
                </td>
            </tr>
            <tr>
                <td class="style17">
                </td>
                <td class="style18" style="border-style: solid">
                    Adı Soyadı:</td>
                <td class="style19" style="border-style: solid">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td class="style20">
                </td>
            </tr>
            <tr>
                <td class="style10">
                </td>
                <td class="style21" style="border-style: solid">
                    Doğum Tarihi:</td>
                <td class="style22" style="border-style: solid">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td class="style11">
                </td>
            </tr>
            <tr>
                <td class="style23">
                </td>
                <td class="style24" style="border-style: solid">
                    Protokol No:</td>
                <td class="style25" style="border-style: solid">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td class="style26">
                </td>
            </tr>
            <tr>
                <td class="style27">
                </td>
                <td class="style28" style="border-style: solid">
                    Rapor Tarihi:</td>
                <td class="style29" style="border-style: solid">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td class="style30">
                </td>
            </tr>
            <tr>
                <td class="style17">
                </td>
                <td class="style18" style="border-style: solid">
                    Hasta Tanı:</td>
                <td class="style19" style="border-style: solid">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
                <td class="style20">
                </td>
            </tr>
            <tr>
                <td class="style36">
                </td>
                <td class="style37" colspan="2" style="border-style: solid">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
&nbsp;tarihinden itibaren,<asp:Label ID="Label8" runat="server"></asp:Label>
&nbsp;tarihi dahil olmak üzere,<asp:Label ID="Label9" runat="server"></asp:Label>
&nbsp;gün istirahati uygundur.</td>
                <td class="style37">
                </td>
            </tr>
            <tr>
                <td class="style33">
                </td>
                <td class="style32" colspan="2" style="border-style: solid">
                    Dr.Hüseyin Fırat<br />
                    33.00.001 nolu AHB</td>
                <td class="style35">
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
