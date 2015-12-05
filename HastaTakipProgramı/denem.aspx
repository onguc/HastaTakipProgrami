<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="denem.aspx.cs" Inherits="firat.denem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="kullaniciadi" HeaderText="kullaniciadi" 
                    SortExpression="kullaniciadi" />
                <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="soru" HeaderText="soru" SortExpression="soru" />
                <asp:BoundField DataField="cevap" HeaderText="cevap" SortExpression="cevap" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:projeConnectionString %>" 
            SelectCommand="SELECT * FROM [DoktorKaydi]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
