<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reçete.aspx.cs" Inherits="firat.Reçete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        
        #TextArea1
        {
            width: 209px;
            height: 90px;
        margin-left: 0px;
    }
        .style16
        {
            height: 40px;
        text-align: right;
        font-weight: bold;
    }
        .style20
        {
            width: 20px;
            height: 36px;
        }
        .style24
    {
        width: 156px;
        height: 22px;
    }
    .style25
    {
        width: 177px;
        height: 22px;
    }
    
        
    .style27
    {
        width: 177px;
        height: 38px;
    }
    .style28
    {
        height: 36px;
    }
    #Reset1
    {
        width: 90px;
        height: 45px;
        font-weight: 700;
        font-size: large;
        margin-left: 0px;
    }
    .style30
    {
        height: 38px;
        width: 107px;
    }
    .style31
    {
        height: 22px;
        width: 107px;
    }
    
    .style33
    {
        width: 319px;
        text-align: left;
    }
        .style38
        {
            height: 34px;
        }
        .style41
        {
            width: 162px;
            height: 40px;
            text-align: left;
            font-weight: bold;
        }
        .style42
        {
            width: 317px;
            height: 40px;
        }
        .style43
        {
            height: 40px;
        }
        
        .style45
        {
            width: 317px;
            height: 33px;
        }
        .style46
        {
            text-align: right;
            font-weight: bold;
            height: 45px;
        }
        .style47
        {
            height: 45px;
            width: 317px;
        }
       
        .style50
        {
            height: 26px;
        }
        .style51
        {
            height: 22px;
        }
        .style52
        {
            height: 38px;
        }
        .style53
        {
            width: 317px;
        }
        .style55
        {
            width: 317px;
            height: 36px;
        }
        .style56
        {
            width: 20px;
            height: 40px;
            text-align: left;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <table class="style1">
            <tr>
                <td class="style41">
                    Reçete Tarihi:</td>
                <td class="style42">
                    <asp:TextBox ID="TextBoxRTarihi" runat="server" Height="30px" Width="180px" 
                        BackColor="#CCCCCC"></asp:TextBox>
                </td>
                <td class="style41" colspan="2">
                    <asp:Label ID="Label1" runat="server" 
                        style="font-weight: 700; color: #990000; font-size: x-large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style41">
                    Sosyal Güvence Durumu:</td>
                <td class="style45">
                    <asp:DropDownList ID="DDLSGuvence" runat="server" Height="30px" Width="180px" 
                        BackColor="#CCCCCC">
                        <asp:ListItem Selected="True">Belirtilmemiş</asp:ListItem>
                        <asp:ListItem>SSK</asp:ListItem>
                        <asp:ListItem>Bağkur</asp:ListItem>
                        <asp:ListItem>Emekli Sandığı</asp:ListItem>
                        <asp:ListItem>Yeşil Kart</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style56">
                &nbsp;Reçete
                    Türü:</td>
                <td class="style41">
                    <asp:DropDownList ID="DDLRTuru" runat="server" Height="30px" Width="180px" 
                        BackColor="#CCCCCC" style="margin-left: 29px">
                        <asp:ListItem Selected="True">Normal</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style41">
                    İlaç Listesi:</td>
                <td class="style53">
                    <asp:DropDownList ID="DDLIListesi" runat="server" Height="30px" Width="180px" 
                        BackColor="#CCCCCC" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Belirtilmemiş</asp:ListItem>
                        <asp:ListItem>Parol 500mg</asp:ListItem>
                        <asp:ListItem>Nurofen 200mg</asp:ListItem>
                        <asp:ListItem>Melox Fort 100mg</asp:ListItem>
                        <asp:ListItem>Aferin 1000mg</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style56" rowspan="2" >
                    
                    Seçilen İlaçlar:</td>
                <td rowspan="2">
                    <asp:TextBox ID="TextBoxSecilenI" runat="server" BackColor="Silver" Height="108px" 
                        TextMode="MultiLine" Width="500px" style="margin-left: 28px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style46">
                    </td>
                <td class="style47">
                    </td>
            </tr>
            <tr>
                <td class="style41">
                    İlaç Adedi(Kutu,Şişe vb.)</td>
                <td class="style55">
                    <asp:DropDownList ID="DDLIadedi" runat="server" Height="30px" Width="180px" 
                        BackColor="#CCCCCC">
                        <asp:ListItem Selected="True">Belirtilmemiş</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style20">
                </td>
                <td class="style28">
                    <asp:Button ID="ButtonEkle" runat="server" Height="33px" 
                        onclick="ButtonEkle_Click" style="margin-left: 417px; margin-right: 0px" 
                        Text="Ekle" Width="74px" />
                </td>
            </tr>
            <tr>
                <td class="style7" colspan="4">
                    <table class="style1">
                        <tr>
                            <td class="style41" rowspan="2">
                                Doz Şekli:</td>
                            <td bgcolor="#CCCCCC" class="style33" rowspan="2" 
                                style="border-style: groove; font-family: Arial; font-weight: normal; font-size: medium; text-align: left;">
                                <asp:RadioButtonList ID="RBLDozSekli" runat="server" 
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem>1x1</asp:ListItem>
                                    <asp:ListItem>1x2</asp:ListItem>
                                    <asp:ListItem>1x3</asp:ListItem>
                                    <asp:ListItem>2x1</asp:ListItem>
                                    <asp:ListItem>2x2</asp:ListItem>
                                    <asp:ListItem>2x3</asp:ListItem>
                                    <asp:ListItem>Haftada 1</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td class="style50">
                                </td>
                            <td class="style50">
                                </td>
                        </tr>
                        <tr>
                            <td class="style38">
                                </td>
                            <td class="style38">
                                </td>
                        </tr>
                        <tr>
                            <td class="style41" rowspan="2">
                                Kullanım Şekli:</td>
                            <td bgcolor="#CCCCCC" class="style33" rowspan="2" 
                                style="border-style: groove; font-family: Arial; font-weight: normal; font-size: medium">
                                <asp:RadioButtonList ID="RBLKSekli" runat="server" RepeatColumns="3" 
                                    RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>Belirtilmedi</asp:ListItem>
                                    <asp:ListItem>Ağızdan</asp:ListItem>
                                    <asp:ListItem>Dil Altı</asp:ListItem>
                                    <asp:ListItem>Cilt Üzerine</asp:ListItem>
                                    <asp:ListItem>Solunum Yolu</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td class="style51">
                                </td>
                            <td class="style51">
                                </td>
                        </tr>
                        <tr>
                            <td class="style50">
                                &nbsp;</td>
                            <td class="style50">
                                </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
        <table class="style1">
            <tr>
                <td class="style41">
                    Tedavi Süresi:</td>
                <td class="style27">
                    <asp:RadioButtonList ID="RBLTSuresi" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>15 dk</asp:ListItem>
                        <asp:ListItem>30 dk</asp:ListItem>
                        <asp:ListItem>45 dk</asp:ListItem>
                        <asp:ListItem>1 saat</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style30">
                </td>
                <td class="style52">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                </td>
                <td class="style25">
                    <asp:Button ID="Button1" runat="server" Height="45px" 
                        style="font-weight: 700; font-size: large; margin-left: 63px" Text="Kaydet" 
                        Width="90px" onclick="Button1_Click" />
                </td>
                <td class="style31">
                    <asp:Button ID="Button2" runat="server" Height="45px" onclick="Button2_Click" 
                        style="font-weight: 700; font-size: large; margin-left: 4px;" Text="İptal" 
                        Width="90px" />
                </td>
                <td class="style51">
                    &nbsp;</td>
            </tr>
        </table>
    
</asp:Content>
