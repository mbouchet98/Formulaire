<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="NonSupClub.aspx.cs" Inherits="Formulaire2.NonSupClub" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <asp:Label ID="lblNonSuppSport" runat="server" Text=""></asp:Label>
    <h1 class="text3">Club Non Supprimé</h1>
    <div runat="server">
        <a href="Accueil.aspx" class="link">Page Acceuil</a>
        <a href="Club.aspx" class="link">Page Club</a>
    </div>
</asp:Content>
