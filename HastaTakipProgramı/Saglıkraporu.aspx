<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Saglıkraporu.aspx.cs" Inherits="firat.Saglıkraporu" %>

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
            text-align: center;
            height: 99px;
        }
        .style6
        {
            height: 66px;
        }
        .style7
        {
            font-weight: bold;
            text-align: center;
            height: 118px;
        }
        .style8
        {
            width: 188px;
            font-weight: bold;
            text-align: right;
            height: 66px;
        }
        .style9
        {
            width: 440px;
            height: 66px;
        }
        .style10
        {
            width: 440px;
            height: 118px;
        }
        .style11
        {
            height: 118px;
        }
        .style12
        {
            width: 440px;
            height: 99px;
        }
        .style13
        {
            height: 99px;
        }
        .style14
        {
            width: 440px;
            height: 39px;
        }
        .style15
        {
            font-weight: bold;
            text-align: right;
            width: 129px;
            height: 39px;
        }
        .style16
        {
            width: 188px;
            height: 39px;
        }
        .style17
        {
            height: 39px;
        }
        .style18
        {
            width: 440px;
            height: 34px;
        }
        .style19
        {
            font-weight: bold;
            text-align: right;
            width: 129px;
            height: 34px;
        }
        .style20
        {
            width: 188px;
            height: 34px;
        }
        .style21
        {
            height: 34px;
        }
        .style22
        {
            width: 440px;
            height: 36px;
        }
        .style23
        {
            font-weight: bold;
            text-align: right;
            width: 129px;
            height: 36px;
        }
        .style24
        {
            width: 188px;
            height: 36px;
        }
        .style25
        {
            height: 36px;
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
                <td class="style12">
                    </td>
                <td class="style2" colspan="2" style="border-style: groove">
                    <b style="text-align: center">SAĞLIK BAKANLIĞI<br />
                    TECE 01 ASM<br />
                    33.00.001 NOLU AHB<br />
                    SAĞLIK RAPORU</b></td>
                <td class="style13">
                    </td>
            </tr>
            <tr>
                <td class="style14">
                    </td>
                <td class="style15" style="border-style: groove">
                    TC Kimlik No:</td>
                <td class="style16" style="border-style: groove">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="style17">
                    </td>
            </tr>
            <tr>
                <td class="style18">
                    </td>
                <td class="style19" style="border-style: groove">
                    Hasta Adı Soyadı:</td>
                <td class="style20" style="border-style: groove">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td class="style21">
                    </td>
            </tr>
            <tr>
                <td class="style22">
                    </td>
                <td class="style23" style="border-style: groove">
                    Doğum Tarihi:</td>
                <td class="style24" style="border-style: groove">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td class="style25">
                    </td>
            </tr>
            <tr>
                <td class="style18">
                    </td>
                <td class="style19" style="border-style: groove">
                    &nbsp;&nbsp;Protokol No:
                </td>
                <td class="style20" style="border-style: groove">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td class="style21">
                    </td>
            </tr>
            <tr>
                <td class="style18">
                    </td>
                <td class="style19" style="border-style: groove">
                    Rapor Tarihi:</td>
                <td class="style20" style="border-style: groove">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td class="style21">
                    </td>
            </tr>
            <tr>
                <td class="style10">
                </td>
                <td class="style7" colspan="2" style="border-style: groove">
                    İLGİLİ MAKAMA<br />
                    Yukarıda bilgileri bulunan kişinin yapılan
                    <br />
                    harici muayene sonucu ruhen ve bedenen<br />
                    işlerini engelleyici hiçbir sağlık problemi bulunmamaktadır.</td>
                <td class="style11">
                </td>
            </tr>
            <tr>
                <td class="style9">
                </td>
                <td class="style6" style="border-style: groove">
                </td>
                <td class="style8" style="border-style: groove">
                    Dr.Hüseyin FIRAT<br />
                    33.00.001 nolu AHB</td>
                <td class="style6">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
