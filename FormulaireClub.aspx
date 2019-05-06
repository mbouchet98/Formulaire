<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="FormulaireClub.aspx.cs" Inherits="Formulaire2.FormulaireClub" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <asp:Label ID="lblAjoutSportClub" runat="server" Text=""></asp:Label>
    <h1 class="text3">Ajouter un sport et un Club</h1>
    <br />
    <div class="container">
        <div style="text-align: initial">
            <div class="form-group row">
                <div class="col-mb-6">
                    <label for="nomSport">Nom Sport</label>
                    <input class="form-control" id="nomSport" type="text" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Votre Nom" ControlToValidate="nomSport" InitialValue="" ForeColor="Red">Nom req5874654uis.</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="nomSport"
                        Display="Dynamic"
                        ErrorMessage="Nom" ForeColor="Red"
                        ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">Nom non valide. 
                    </asp:RegularExpressionValidator>
                </div>
                <div class="col-mb-6">
                    <label for="nombre">Nb Ahdérant Max</label>
                    <input class="form-control" id="NbAdhMax" type="text" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Votre NombreAhdMax" ControlToValidate="NbAdhMax" InitialValue="" ForeColor="Red">Nombre requis.</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                        ControlToValidate="NbAdhMax"
                        Display="Dynamic"
                        ErrorMessage="Nom" ForeColor="Red"
                        ValidationExpression="^[0-9]+$">Nombre non valide. 
                    </asp:RegularExpressionValidator>
                </div>
                <div class="col-mb-6">
                    <label for="prix">Prix</label>
                    <input class="form-control" id="Prix" type="text" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Votre Prix" ControlToValidate="Prix" InitialValue="" ForeColor="Red">Prix requis.</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                        ControlToValidate="Prix"
                        Display="Dynamic"
                        ErrorMessage="Prix" ForeColor="Red"
                        ValidationExpression="^\d+$">Prix non valide. 
                    </asp:RegularExpressionValidator>
                </div>
                <div>
                    <input id="Id" runat="server" class="hidden" />
                </div>
            </div>
            <asp:Button ID="Button2" runat="server" Text="Valider" OnClick="Button2_Click" class="btn btn-primary" />
        </div>
        <a href="Menu.aspx" class="link">Page Acceuil</a>
        <p />
        <a href="Club.aspx" class="link">Page Club</a>
    </div>
</asp:Content>
