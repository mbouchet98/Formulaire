<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="SuppressionCategorie.aspx.cs" Inherits="Formulaire2.SuppressionCategorie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <asp:Label ID="lblSuppCate" runat="server" Text=""></asp:Label>
    <h1 class="text3">Categorie Supprimé</h1>
    <div runat="server">
        <a href="Accueil.aspx" class="link">Page Acceuil</a>
        <a href="Categorie.aspx" class="link">Page Categorie</a>
    </div>
</asp:Content>
