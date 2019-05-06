using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formulaire2
{
    public partial class SuppressionCategorie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string IdCategorie = Request.QueryString["id-Categorie"];
            try
            {
                FonctionsUtiles maFonctionsUtiles = new FonctionsUtiles();
                maFonctionsUtiles.DeleteCategorie(IdCategorie);
            }
            catch
            {
                Response.Redirect("NonSupCate.aspx");
            }
        }
    }
}