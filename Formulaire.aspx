<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Formulaire.aspx.cs" Inherits="Formulaire2.Formulaire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <asp:Label ID="lblformulaire" runat="server" Text=""></asp:Label>
        <h1 class="text3">Remplir Le Formaulaire</h1>
        <div class="container">
            <br />
            <div class="form-group row" />
            <div class="col-mb-6">
                <label for="nom">Nom</label>
                <input class="form-control" id="nom" type="text" runat="server" />
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
                <input class="form-control" id="prenom" type="text" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Votre Prenom" ControlToValidate="prenom" InitialValue="" ForeColor="Red">Prenom requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ControlToValidate="prenom"
                    Display="Dynamic"
                    ErrorMessage="Prenom" ForeColor="Red"
                    ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">Prenom non valide. 
                </asp:RegularExpressionValidator>
            </div>
            <div class="col-mb-6">
                <label for="adresse">Adresse</label>
                <input class="form-control" id="adresse" type="text" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Votre Adresse" ControlToValidate="adresse" InitialValue="" ForeColor="Red">Adresse requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                    ControlToValidate="adresse"
                    Display="Dynamic"
                    ErrorMessage="Adresse" ForeColor="Red"
                    ValidationExpression="[0-9a-zA-Z #,-]+">Adresse non valide ex : 46 rue exemple. 
                </asp:RegularExpressionValidator>
            </div>
            <div class="col-mb-6" runat="server">
                <label for="Sport">Sport</label><br />
                <asp:DropDownList ID="selectSport3" runat="server" DataTextField="nomSport" DataValueField="Id" OnSelectedIndexChanged="selectSport3_SelectedIndexChanged" AutoPostBack="true" Height="22px" Width="173px"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="selectSport3" InitialValue="-1" runat="server" ErrorMessage="Selectinner un Sport" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-mb-6">
                <label for="categorie">Categorie</label><br />
                <asp:DropDownList ID="selectSport6" runat="server" DataTextField="Label" DataValueField="Id" Height="19px" Width="174px"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="selectSport6" InitialValue="-1" runat="server" ErrorMessage="Selectinner une Categorie" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
            <div class="col-mb-6">
                <label for="date">Date de Naissance</label>
                <input class="form-control" id="dateNaissance" type="text" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Votre Date de Naissance" ControlToValidate="dateNaissance" InitialValue="" ForeColor="Red">Date de Naissance requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"
                    ControlToValidate="dateNaissance"
                    Display="Dynamic"
                    ErrorMessage="DateNaissance" ForeColor="Red"
                    ValidationExpression="^[0-9m]{1,2}/[0-9d]{1,2}/[0-9y]{4}$">Date de Naissance non valide ex : JJ/MM/AA . 
                </asp:RegularExpressionValidator>
            </div>
            <div class="col-mb-6">
                <label for="email">Email</label>
                <input class="form-control" id="email" type="text" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Votre Email" ControlToValidate="email" InitialValue="" ForeColor="Red">Email requis.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"
                    ControlToValidate="email"
                    Display="Dynamic"
                    ErrorMessage="DateNaissance" ForeColor="Red"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email non valide ex :duConG@gmail.com. 
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <p class="text7">
            Tout les champs doivent etre remplis !!!
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Valider_Click" Text="Valider" class="btn btn-primary" />
        <a href="Menu.aspx" class="link">Page Acceuil</a>
        <a href="Adherant.aspx" class="link">Page Adhérant</a>

</asp:Content>
