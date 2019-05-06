<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Modifier_Adherant.aspx.cs" Inherits="Formulaire2.Modifier_Adherant" %>
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
                <label for="Nom">Nom</label>
                <asp:TextBox ID="nom" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Votre Nom" ControlToValidate="nom" InitialValue="" ForeColor="Red">Nom requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ControlToValidate="nom"
                    Display="Dynamic"
                    ErrorMessage="Nom" ForeColor="Red"
                    ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">Nom non valide. 
                </asp:RegularExpressionValidator>
            </div>
            <div class="col-mb-6">
                <label for="prenom">Prenom</label>
                <asp:TextBox ID="prenom" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Votre Prenom" ControlToValidate="prenom" InitialValue="" ForeColor="Red">Prenom requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ControlToValidate="prenom"
                    Display="Dynamic"
                    ErrorMessage="Prenom" ForeColor="Red"
                    ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">Prenom non valide. 
                </asp:RegularExpressionValidator>
            </div>
            <div class="col-mb-6">
                <label for="Adresse">Adresse</label>
                <asp:TextBox ID="Adresse" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Votre Adresse" ControlToValidate="Adresse" InitialValue="" ForeColor="Red">Adresse requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                    ControlToValidate="Adresse"
                    Display="Dynamic"
                    ErrorMessage="Adresse" ForeColor="Red"
                    ValidationExpression="[0-9a-zA-Z #,-]+">Adresse non valide. 
                </asp:RegularExpressionValidator>
            </div>
            <div class="col-mb-6" runat="server">
                <label for="Modification">Sport</label><br />
                <asp:DropDownList ID="Modification" runat="server" OnSelectedIndexChanged="Modification_SelectedIndexChanged" DataTextField="nomSport" DataValueField="Id" AutoPostBack="true"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="Modification" InitialValue="-1" runat="server" ErrorMessage="Selectinner un Sport" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
            <div class="col-mb-6">
                <label for="categorie">Categorie</label><br />
                <asp:DropDownList ID="ModCategorie" runat="server" DataTextField="Label" DataValueField="Id"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="ModCategorie" InitialValue="-1" runat="server" ErrorMessage="Selectinner une Categorie" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-mb-6">
                <label for="date">Date de Naissance</label>
                <input class="form-control" id="dateNaissance" type="text" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Votre Date de Naissance" ControlToValidate="dateNaissance" InitialValue="" ForeColor="Red">Date de Naissance requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"
                    ControlToValidate="dateNaissance"
                    Display="Dynamic"
                    ErrorMessage="DateNaissance" ForeColor="Red"
                    ValidationExpression="^[0-9m]{1,2}/[0-9d]{1,2}/[0-9y]{4}$">Date de Naissance non valide. 
                </asp:RegularExpressionValidator>
            </div>
            <div class="col-mb-6">
                <label for="email">Email</label>
                <asp:TextBox ID="Email" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Votre Email" ControlToValidate="Email" InitialValue="" ForeColor="Red">Email requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"
                    ControlToValidate="Email"
                    Display="Dynamic"
                    ErrorMessage="DateNaissance" ForeColor="Red"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email non valide. 
                </asp:RegularExpressionValidator>
            </div>
            <div>
                <input type="text" name="Id" hidden="hidden" id="Id" runat="server" />
            </div>
        </div>
    </div>
    <p />
    <asp:LinkButton id="LinkButton" Text="Modifier" CommandeName="Id-Adherant" CommandeArgument="' + Id_Adh + '" Runat="Server"  OnClick="LinkButton_Click">Modifier</asp:Linkbutton>
    <asp:Button ID="Button1" runat="server" Text="Enregistrer" OnClick="Button1_Click" class="btn btn-info" />
    <a href="#" class="link">Page Acceuil</a>
    <a href="Adherant.aspx" class="link">Page Adhérant</a>
</asp:Content>
