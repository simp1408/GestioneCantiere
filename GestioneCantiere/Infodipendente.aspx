<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Infodipendente.aspx.cs" Inherits="GestioneCantiere.Infodipendente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Scheda Dipendente</h3>


  <div class="card" style="width: 18rem;">
  <div class="card-body">
   <span><b>Nome:</b></span> <asp:Label ID="LblNome" runat="server" Text=""></asp:Label><br />
      <span><b>Cognome:</b></span> <asp:Label ID="LblCognome" runat="server" Text=""></asp:Label><br />
       <span><b>CF:</b></span><asp:Label ID="LblCF" runat="server" Text=""></asp:Label><br />
       <span><b>Coniugato:</b></span><asp:Label ID="LblConiugato" runat="server" Text=""></asp:Label><br />
      <span><b>Figli a Carico:</b></span> <asp:Label ID="LblFigliCarico" runat="server" Text=""></asp:Label><br />
      <span><b>Mansione:</b></span> <asp:Label ID="LblMansione" runat="server" Text=""></asp:Label><br />

        <a href="Pagamenti.aspx" class="card-link">Paga Stipedio</a>
  </div>
</div>     



</asp:Content>
