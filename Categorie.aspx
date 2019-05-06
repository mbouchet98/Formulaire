<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Categorie.aspx.cs" Inherits="Formulaire2.Categorie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <div class="text-center">
            <h1>
                <asp:Label ID="lblCategorie" runat="server" Text="Label"></asp:Label>
            </h1>
        </div>
        <div runat="server" id="CategorieId"></div>

<asp:Button ID="modifierAdh" runat="server" Text="Enregistrer" class="btn btn-primary" href="Adherant.aspx" />
    <asp:LinkButton ID="modifierCate" runat="server" href="Categorie.aspx?id-Categorie=' + Id_Cate + '" >Modifier</asp:LinkButton>
</asp:Content>
