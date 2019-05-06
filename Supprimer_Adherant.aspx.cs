using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formulaire2
{
    public partial class Supprimer_Adherant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string IdAdherant = Request.QueryString["id-Adherant"];
            FonctionsUtiles maFonctionsUtiles = new FonctionsUtiles();
            maFonctionsUtiles.DeleteAdherant(IdAdherant);
        }
    }
}