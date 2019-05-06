<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Adherant.aspx.cs" Inherits="Formulaire2.Adherant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <div class="text-center">
            <h1>
                <asp:Label ID="lblAdhrant" runat="server" Text="Label"></asp:Label>
            </h1>
        </div>
        <div runat="server" id="AdherantId"></div>
</asp:Content>
