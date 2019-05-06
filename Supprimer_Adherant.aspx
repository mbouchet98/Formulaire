<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Supprimer_Adherant.aspx.cs" Inherits="Formulaire2.Supprimer_Adherant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <asp:Label ID="lblSuppAdh" runat="server" Text=""></asp:Label>
    <h1 class="text3">Adherant Supprimé</h1>
    <div runat="server">
        <a href="Accueil.aspx" class="link">Page Acceuil</a>
        <a href="Adherant.aspx" class="link">Page Adhérant</a>
    </div>
</asp:Content>
