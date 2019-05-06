<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Modifier_Club.aspx.cs" Inherits="Formulaire2.Modifier_Club" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <asp:Label ID="lblModifSport" runat="server" Text=""></asp:Label>
    <h1 class="text3">Remplir Le Formaulaire</h1>
    <div runat="server">
        <div class="form-group row">
            <div class="col-sm-4">
                <label for="Nom">Nom Sport</label>
                <input class="form-control" id="nomSportinput" type="text" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Votre Nom" ControlToValidate="nomSportinput" InitialValue="" ForeColor="Red">Nom requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ControlToValidate="nomSportinput"
                    Display="Dynamic"
                    ErrorMessage="Nom" ForeColor="Red"
                    ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">Nom non valide. 
                </asp:RegularExpressionValidator>
            </div>
            <div class="col-sm-4">
                <label for="Nom">NbAdherant</label>
                <input class="form-control" id="NbAdherantInput" type="text" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Votre NombreAhdMax" ControlToValidate="NbAdherantInput" InitialValue="" ForeColor="Red">Nombre requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ControlToValidate="NbAdherantInput"
                    Display="Dynamic"
                    ErrorMessage="Nom" ForeColor="Red"
                    ValidationExpression="^[0-9]+$">Nombre non valide. 
                </asp:RegularExpressionValidator>
            </div>
            <div class="col-sm-4">
                <label for="Nom">Prix</label>
                <input class="form-control" id="PrixInput" type="text" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Votre Prix" ControlToValidate="PrixInput" InitialValue="" ForeColor="Red">Prix requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                    ControlToValidate="PrixInput"
                    Display="Dynamic"
                    ErrorMessage="Prix" ForeColor="Red"
                    ValidationExpression="^\d+$">Prix non valide. 
                </asp:RegularExpressionValidator>
            </div>
            <input type="text" name="nom" id="idInput" runat="server" hidden="hidden" />
        </div>
        <asp:Button ID="modifierclub" runat="server" Text="Enregistrer" class="btn btn-info" OnClick="modifierclub_Click" />
        <a href="Menu.aspx" class="link">Page Acceuil</a>
        <a href="Club.aspx" class="link">Page Club</a>
    </div>
</asp:Content>
