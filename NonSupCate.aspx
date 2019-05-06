<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="NonSupCate.aspx.cs" Inherits="Formulaire2.NonSupCate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <asp:Label ID="lblNonSuppCate" runat="server" Text=""></asp:Label>
    <h1 class="text3">Categorie Non Supprimé</h1>
    <div runat="server">
        <a href="Accueil.aspx" class="link">Page Acceuil</a>
        <a href="Categorie.aspx" class="link">Page Categorie</a>
    </div>
</asp:Content>
