using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formulaire2
{
    public partial class FormulaireClub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string nomSportRecup = nomSport.Value;
            string NbAdherantMaxRecup = NbAdhMax.Value;
            string prixRecup = Prix.Value;

            FonctionsUtiles maFonctionUtile = new FonctionsUtiles();
            string IdRecup = maFonctionUtile.getIdSportByNom(nomSportRecup);
            maFonctionUtile.insertClub(NbAdherantMaxRecup, nomSportRecup, prixRecup);

            Response.Redirect("PageValidationFromClub.aspx");

        }
    }
}