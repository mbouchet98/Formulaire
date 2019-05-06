using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formulaire2
{
    public partial class Club : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FonctionsUtiles maFonctionsUtiles = new FonctionsUtiles();
            string resultat = maFonctionsUtiles.getDataClub();
           
            lblClub.Text = "Les Clubs";
            ClubId.Controls.Add(new LiteralControl(resultat));

        }
    }
}