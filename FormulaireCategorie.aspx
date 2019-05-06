<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="FormulaireCategorie.aspx.cs" Inherits="Formulaire2.FormulaireCategorie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <asp:Label ID="lblformulaire" runat="server" Text=""></asp:Label>
    <h1 class="text3">Remplir Le Formaulaire</h1>
    <div class="container">
        <div class="form-group row" />
        <div class="col-mb-6">
            <label for="categorie">Categorie</label><br />
            <input class="form-control" id="LableCateInpute" type="text" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Votre Categorie" ControlToValidate="LableCateInpute" InitialValue="" ForeColor="Red">Categorie requis.</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"
                ControlToValidate="LableCateInpute"
                Display="Dynamic"
                ErrorMessage="Categorie" ForeColor="Red"
                ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">Categorie non valide. 
            </asp:RegularExpressionValidator>
        </div>
        <div class="col-mb-6" runat="server">
            <label for="Sport">Sport</label><br />
            <asp:DropDownList ID="selectSport8" runat="server" DataTextField="nomSport" DataValueField="Id"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="selectSport8" InitialValue="-1" ErrorMessage="Selectionner un Sport" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <p class="text7">
            Tout les champs doivent etre remplis !!!
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Valider9_Click" Text="Valider" class="btn btn-primary" />
        <a href="Accueil.aspx" class="link">Page Acceuil</a>
        <a href="Categorie.aspx" class="link">Page Categorie</a>
    </div>
</asp:Content>
