﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formulaire2
{
    public partial class Supprimer_Club : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string IdClub = Request.QueryString["id-Club"];
            try
            {
                FonctionsUtiles maFonctionsUtiles = new FonctionsUtiles();
                maFonctionsUtiles.DeleteClub(IdClub);
            }
            catch
            {
                
                Response.Redirect("NonSupClub.aspx");
            }
            
        }
    }
}