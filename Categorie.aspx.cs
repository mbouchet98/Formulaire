using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formulaire2
{
    public partial class Categorie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FonctionsUtiles maFonctionUtile = new FonctionsUtiles();
            string resultat = maFonctionUtile.getDataCategorie();

            lblCategorie.Text = "Les Categories";
            CategorieId.Controls.Add(new LiteralControl(resultat));

        }
    }
}