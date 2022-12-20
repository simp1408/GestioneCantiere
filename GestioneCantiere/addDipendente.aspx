<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="addDipendente.aspx.cs" Inherits="GestioneCantiere.addDipendente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h5 class="d-flex justify-content-center mt-2">Aggiungi Dipendente</h5>
    <asp:Label ID="LblAddDipendente" runat="server" Text="" Visible="false"></asp:Label>
  <div id="form">
      <div class="container">
         

      <span>Nome :</span><asp:Label ID="LblNome" runat="server" Text="" ></asp:Label>
        <asp:TextBox ID="TextNome" runat="server"></asp:TextBox> <br />

        <span>Cognome :</span><asp:Label ID="LblCognome" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextCognome" runat="server"></asp:TextBox> <br />

        <span>Codice Fiscale :</span><asp:Label ID="LblCF" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextCF" runat="server"></asp:TextBox> <br />

        <span>Coniugato :</span><asp:Label ID="LblConiugato" runat="server" Text=""></asp:Label>
          <asp:CheckBox ID="CheckConiugato" runat="server" /><br />

        <span>Figli a carico :</span><asp:Label ID="LblFigliCarico" runat="server"></asp:Label>
        <asp:TextBox ID="TextFigliCarico" runat="server" TextMode="Number"></asp:TextBox> <br />

            <span>Mansione :</span><asp:Label ID="LblMansione" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="TextMansione" runat="server"></asp:TextBox> <br />

           <asp:LinkButton ID="leftarrow" runat="server" PostBackUrl="~/Home.aspx"><i class="bi bi-arrow-left-circle-fill"></i></asp:LinkButton>
          <asp:Button ID="ButtonAddDipendente" runat="server" Text="addDipendente" OnClick="ButtonAddDipendente_Click" />
         
      </div>

    </div>

</asp:Content>
