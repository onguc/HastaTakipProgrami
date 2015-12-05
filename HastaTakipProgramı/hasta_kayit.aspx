<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hasta_kayit.aspx.cs" Inherits="firat.hasta_kayıt" %>
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
        
        .style7
        {
            width: 101px;
            height: 47px;
        }
        .style8
        {
            width: 241px;
        }
        .style9
        {
            width: 101px;
            font-weight: bold;
            text-align: right;
        }
        .style10
        {
            width: 134px;
        }
        .style11
        {
            width: 134px;
            font-weight: bold;
            text-align: right;
        }
        #TextArea1
        {
            height: 33px;
            width: 183px;
        }
        .style12
        {
            width: 101px;
            font-weight: bold;
            text-align: right;
            height: 24px;
        }
        .style13
        {
            width: 241px;
            height: 24px;
        }
        .style14
        {
            width: 134px;
            height: 24px;
        }
        .style15
        {
            height: 24px;
        }
        .style16
        {
            width: 241px;
            height: 47px;
        }
        .style17
        {
            width: 134px;
            height: 47px;
        }
        .style18
        {
            height: 47px;
        }
        #Reset1
        {
            width: 80px;
            height: 39px;
        }
        .style19
        {
            width: 101px;
            font-weight: bold;
            text-align: right;
            height: 50px;
        }
        .style20
        {
            height: 50px;
        }
        .style21
        {
            width: 134px;
            font-weight: bold;
            text-align: right;
            height: 50px;
        }
        .style22
        {
            height: 50px;
        }
        .style23
        {
            width: 101px;
            font-weight: bold;
            text-align: right;
            height: 45px;
        }
        .style24
        {
            width: 241px;
            height: 45px;
        }
        .style25
        {
            width: 134px;
            font-weight: bold;
            text-align: right;
            height: 45px;
        }
        .style26
        {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" style="height: 272px">
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20" colspan="3">
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; color: #CC3300; font-size: x-large;"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19">
                TC Kimlik No:</td>
            <td class="style20">
                <asp:TextBox ID="TextBoxTC" runat="server" MaxLength="11" Width="185px" 
                    Height="28px" BackColor="#CCCCCC" onKeyPress="SayiKontrol(event)" ></asp:TextBox>
            </td>
            <td class="style21">
                Meslek:</td>
            <td class="style22">
                <asp:TextBox ID="TextBoxMeslek" runat="server" BackColor="#CCCCCC" 
                    Height="28px" Width="185px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Ad:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxAd" runat="server" MaxLength="15" Width="185px" 
                    Height="28px" BackColor="#CCCCCC"></asp:TextBox>
            </td>
            <td class="style11">
                Sosyal Güvencesi:</td>
            <td>
                <asp:DropDownList ID="DDLSGuvence" runat="server" Height="28px" 
                    BackColor="#CCCCCC">
                    <asp:ListItem Selected="True">Belirtilmemiş</asp:ListItem>
                    <asp:ListItem>SSK</asp:ListItem>
                    <asp:ListItem>Bağkur</asp:ListItem>
                    <asp:ListItem>Emekli Sandığı</asp:ListItem>
                    <asp:ListItem>Yeşil Kart</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style23">
                Soyad:</td>
            <td class="style24">
                <asp:TextBox ID="TextBoxSoyad" runat="server" MaxLength="15" Width="185px" 
                    Height="28px" BackColor="#CCCCCC"></asp:TextBox>
            </td>
            <td class="style25">
                Medeni Hal:</td>
            <td class="style26">
                <asp:DropDownList ID="DDLMedeniHali" runat="server" BackColor="#CCCCCC" 
                    Height="26px" Width="86px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Bekar</asp:ListItem>
                    <asp:ListItem>Evli</asp:ListItem>
                    <asp:ListItem>Diğer</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Doğum Yeri:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxDYeri" runat="server" MaxLength="15" Width="185px" 
                    Height="28px" BackColor="#CCCCCC"></asp:TextBox>
            </td>
            <td class="style11">
                Kan Grubu:</td>
            <td>
                <asp:DropDownList ID="DDLKanGrubu" runat="server" Height="28px" 
                    BackColor="#CCCCCC">
                    <asp:ListItem>A Rh +</asp:ListItem>
                    <asp:ListItem>A Rh -</asp:ListItem>
                    <asp:ListItem>B Rh +</asp:ListItem>
                    <asp:ListItem>B Rh -</asp:ListItem>
                    <asp:ListItem>0 Rh +</asp:ListItem>
                    <asp:ListItem>0 Rh -</asp:ListItem>
                    <asp:ListItem>AB Rh +</asp:ListItem>
                    <asp:ListItem>AB Rh -</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Doğum Tarihi:</td>
            <td class="style8">
                <asp:DropDownList ID="DDLDGunu" runat="server" Height="28px" Width="54px" 
                    BackColor="#CCCCCC">
                    <asp:ListItem Selected="True">Gün</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp; 
                <asp:DropDownList ID="DDLDAyi" runat="server" Height="28px" 
                    Width="50px" BackColor="#CCCCCC">
                    <asp:ListItem Selected="True">01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                &nbsp;
                <asp:DropDownList ID="DDLDYili" runat="server" Height="28px" Width="57px" 
                    BackColor="#CCCCCC">
                    <asp:ListItem Selected="True">Yıl</asp:ListItem>
                    <asp:ListItem>1960</asp:ListItem>
                    <asp:ListItem>1961</asp:ListItem>
                    <asp:ListItem>1962</asp:ListItem>
                    <asp:ListItem>1963</asp:ListItem>
                    <asp:ListItem>1964</asp:ListItem>
                    <asp:ListItem>1965</asp:ListItem>
                    <asp:ListItem>1966</asp:ListItem>
                    <asp:ListItem>1967</asp:ListItem>
                    <asp:ListItem>1968</asp:ListItem>
                    <asp:ListItem>1969</asp:ListItem>
                    <asp:ListItem>1970</asp:ListItem>
                    <asp:ListItem>1971</asp:ListItem>
                    <asp:ListItem>1972</asp:ListItem>
                    <asp:ListItem>1973</asp:ListItem>
                    <asp:ListItem>1974</asp:ListItem>
                    <asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1976</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1979</asp:ListItem>
                    <asp:ListItem>1980</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11">
                Telefon:</td>
            <td>
                <asp:TextBox ID="TextBoxTel" runat="server" Width="180px" Height="28px" 
                    MaxLength="11" BackColor="#CCCCCC" onKeyPress="SayiKontrol(event)" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Cinsiyet:</td>
            <td class="style8">
                <asp:RadioButtonList ID="RBLCinsiyet" runat="server" 
                    RepeatDirection="Horizontal" Width="180px">
                    <asp:ListItem>Bay</asp:ListItem>
                    <asp:ListItem>Bayan</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style11">
                Adres:</td>
            <td>
                <asp:TextBox ID="TextBoxAdres" runat="server" BackColor="#CCCCCC" 
                    TextMode="MultiLine" Width="367px" Height="43px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Anne Adı:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxAneeAdi" runat="server" Width="185px" Height="28px" 
                    BackColor="#CCCCCC"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                Baba Adı:</td>
            <td class="style13">
                <asp:TextBox ID="TextBoxBabaAdi" runat="server" Width="185px" Height="28px" 
                    BackColor="#CCCCCC"></asp:TextBox>
            </td>
            <td class="style14">
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style16">
              <center>
                  <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="42px" 
                    style="text-align: center" Text="KAYDET" Width="81px" 
                      onclick="Button1_Click" /></center>
            </td>
            <td class="style17">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="42px" 
                    Text="İPTAL" Width="82px" onclick="Button2_Click" />
            </td>
            <td class="style18">
                <h2>
                    &nbsp;</h2>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
