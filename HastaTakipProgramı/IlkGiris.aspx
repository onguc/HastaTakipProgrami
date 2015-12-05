<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IlkGiris.aspx.cs" Inherits="firat.deneme4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            font-weight: bold;
            text-align: center;
            height: 253px;
            margin-top: 169px;
            margin-bottom: 186px;
        }
        #Button1
        {
            font-weight: 700;
        }
        .style2
        {
            width: 127%;
        }
        .style3
        {
            width: 424px;
        }
        .style4
        {
            width: 484px;
        }
        .style5
        {
            width: 50px;
        }
        .style6
        {
            width: 424px;
            height: 54px;
        }
        .style7
        {
            height: 54px;
        }
        .style8
        {
            width: 424px;
            height: 52px;
        }
        .style9
        {
            height: 52px;
        }
        .style11
        {
            height: 52px;
        }
        .style13
        {
            height: 57px;
        }
        .style15
        {
            width: 424px;
            height: 57px;
        }
        .style16
        {
            height: 57px;
        }
        .style17
        {
            width: 424px;
            height: 40px;
        }
        .style18
        {
            height: 40px;
        }
        .style20
        {
            height: 40px;
        }
        .style21
        {
            height: 54px;
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <table class="style2">
            <tr>
                <td class="style6">
                </td>
                <td bgcolor="#CCCCCC" class="style21" colspan="2" 
                    style="border-style: ridge; font-size: large">
                    LÜTFEN KULLANICI KODUNUZU GİRİNİZ</td>
                <td class="style7">
                </td>
            </tr>
            <tr>
                <td class="style8">
                </td>
                <td class="style9" bgcolor="#CCCCCC" colspan="2" style="border-style: groove">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="White" Height="30px" 
                        Width="180px" BorderStyle="Solid" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style11">
                </td>
            </tr>
            <tr>
                <td class="style15">
                </td>
                <td class="style13" bgcolor="#CCCCCC" colspan="2" style="border-style: groove">
                    <asp:Button ID="Button1" runat="server" Height="44px" onclick="Button1_Click1" 
                        Text="GİRİŞ" Width="68px" />
                </td>
                <td class="style16">
                </td>
            </tr>
            <tr>
                <td class="style17">
                </td>
                <td class="style18" bgcolor="#CCCCCC" colspan="2" style="border-style: groove">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: large"></asp:Label>
                </td>
                <td class="style20">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
       
    
    </div>
    </form>
</body>
</html>
