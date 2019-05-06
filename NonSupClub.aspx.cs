using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formulaire2
{
    public partial class NonSupClub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<script>alert(\"Un adhérant possède un Club/Sport vous pouvez donc pas la supprimer.\");</script>");
        }
    }
}