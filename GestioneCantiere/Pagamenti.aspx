<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Pagamenti.aspx.cs" Inherits="GestioneCantiere.Pagamenti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Sei nella pagina Pagamenti</p>
    <asp:Label ID="lblpagamento" runat="server" Text="Label" Visible="false"></asp:Label>

   <span>Stipendio:</span><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Label ID="IDpagamenti" runat="server" Text="" ></asp:Label>
    <asp:Calendar ID="DataPagamento" runat="server"></asp:Calendar>
    <asp:Button ID="Stipendio" runat="server" Text="Button" OnClick="Stipendio_Click"  />
    <asp:Label ID="ID_dipendenti" runat="server" Text=""></asp:Label>





</asp:Content>
