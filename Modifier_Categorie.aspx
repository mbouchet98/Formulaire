<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Modifier_Categorie.aspx.cs" Inherits="Formulaire2.Modifier_Categorie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <asp:Label ID="lblModif" runat="server" Text=""></asp:Label>
    <h1 class="text3">Remplir Le Formaulaire</h1>
    <div class="container">
        <div runat="server">
            <br />
            <div class="form-group row" />
            <div class="col-mb-6">
                <label for="Label">Nom</label>
                <input class="form-control" id="nomCateInput" type="text" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Votre Categorie" ControlToValidate="nomCateInput" InitialValue="" ForeColor="Red">Categorie requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"
                    ControlToValidate="nomCateInput"
                    Display="Dynamic"
                    ErrorMessage="Categorie" ForeColor="Red"
                    ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">Categorie non valide. 
                </asp:RegularExpressionValidator>
            </div>
            <div class="col-mb-6" runat="server">
                <label for="Modification">Sport/Club</label><br />
                <asp:DropDownList ID="Modification" runat="server" DataTextField="nomSport" DataValueField="Id"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Modification" InitialValue="-1" ErrorMessage="Selectionner un Sport" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
            <div>
                <input type="text" name="Id" hidden="hidden" id="Idinput" runat="server" />
            </div>
        </div>

    </div>
    <p />
    <asp:Button ID="Button6" runat="server" Text="Enregistrer" OnClick="Button6_Click" class="btn btn-info" />
    <a href="#" class="link">Page Acceuil</a>
    <a href="Adherant.aspx" class="link">Page Adhérant</a>
</asp:Content>
