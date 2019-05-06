<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Club.aspx.cs" Inherits="Formulaire2.Club" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <div class="text-center">
            <h1>
                <asp:Label ID="lblClub" runat="server" Text="Label"></asp:Label>
            </h1>
        </div>
        <div runat="server" id="ClubId"></div>
</asp:Content>
