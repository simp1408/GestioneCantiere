<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GestioneCantiere.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-flex justify-content-center mt-3 w-100">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ItemType="GestioneCantiere.Classi.Dipendenti">
        <Columns>
            <asp:TemplateField HeaderText="ID" Visible="false">
               <ItemTemplate>
                   <asp:Label ID="LblIDdipendenti" runat="server" Text="<%# Item.IDdipendenti %>"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nome">
               <ItemTemplate>
                   <asp:Label ID="LblNome" runat="server" Text="<%# Item.Nome %>"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

                 <asp:TemplateField HeaderText="Cognome">
               <ItemTemplate>
                   <asp:Label ID="LblCognome" runat="server" Text="<%# Item.Cognome %>"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

                 <asp:TemplateField HeaderText="Codice_Fiscale">
               <ItemTemplate>
                   <asp:Label ID="LblCodice_Fiscale" runat="server" Text="<%# Item.CF %>"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

                 <asp:TemplateField HeaderText="Congiugato">
               <ItemTemplate>
                    <asp:Label ID="LblConiugato" runat="server" Text="<%# Item.Coniugato %>"></asp:Label>
               
                </ItemTemplate>
            </asp:TemplateField>

               <asp:TemplateField HeaderText="Figli_a_Carico">
               <ItemTemplate>
                   <asp:Label ID="LblFigliCarico" runat="server" Text="<%# Item.FigliCarico %>"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

               <asp:TemplateField HeaderText="Mansione">
               <ItemTemplate>
                   <asp:Label ID="LblMansione" runat="server" Text="<%# Item.Mansione %>"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

               <asp:TemplateField HeaderText="">
               <ItemTemplate>
                  <div class="text-center">
                      <a href="Modifica.aspx?IDdipendenti=<%# Item.IDdipendenti %>"><i class="bi bi-pencil-square UpdColor"></i></a>
                  </div>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="">
               <ItemTemplate>
                   <asp:LinkButton ID="Cancella" runat="server"><i class="bi bi-trash3"></i></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

              <asp:TemplateField HeaderText="">
               <ItemTemplate>
                      <div class="text-center">
                      <a href="AddDipendente.aspx?IDdipendenti=<%# Item.IDdipendenti %>"><i class="bi bi-person-add"></i></a>
                  </div>
                </ItemTemplate>
            </asp:TemplateField>

                   <asp:TemplateField HeaderText="">
               <ItemTemplate>
                      <div class="text-center">
                      
                      <a href="Infodipendente.aspx?IDdipendenti=<%# Item.IDdipendenti %>"><i class="bi bi-info-circle"></i></a>
                  </div>
                </ItemTemplate>
            </asp:TemplateField>


        </Columns>
    </asp:GridView>
        </div>
 </asp:Content>


