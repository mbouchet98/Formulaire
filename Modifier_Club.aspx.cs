using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formulaire2
{
    public partial class Modifier_Club : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FonctionsUtiles maFonctionsUtiles = new FonctionsUtiles();
                string IdClub = Request.QueryString["id-Club"];

                List<string> lister = maFonctionsUtiles.getDataNomSportById_Sport(IdClub);
                string id = lister[0];
                string nomSport = lister[1];
                string NbAdherantMax = lister[2];
                string prix = lister[3];

                nomSportinput.Value = nomSport;
                NbAdherantInput.Value = NbAdherantMax;
                PrixInput.Value = prix;
                idInput.Value = id;

            }
        }

        protected void modifierclub_Click(object sender, EventArgs e)
        {
            string nomSportRecup = nomSportinput.Value;
            string IdRecup = idInput.Value;
            string NbAdherantMaxRecup = NbAdherantInput.Value;
            string prixRecup = PrixInput.Value;

            FonctionsUtiles maFonctionUtile = new FonctionsUtiles();
            maFonctionUtile.UpdateClub(IdRecup, nomSportRecup, NbAdherantMaxRecup, prixRecup);

            Response.Redirect("ValidationFormulaireClub.aspx");

        }
    }
}