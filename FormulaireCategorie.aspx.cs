using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formulaire2
{
    public partial class FormulaireCategorie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FonctionsUtiles maFonctionsUtiles = new FonctionsUtiles();
                

                selectSport8.DataSource = GetData("spGetClub", null);
                selectSport8.DataBind();

                ListItem liSport = new ListItem("Select Sport", "-1");
                selectSport8.Items.Insert(0, liSport);

            }
        }
        private DataSet GetData(string SPName, SqlParameter SSParameter)
        {
            string CS = ConfigurationManager.ConnectionStrings["ConnectionBDD"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter(SPName, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (SSParameter != null)
            {
                da.SelectCommand.Parameters.Add(SSParameter);
            }

            DataSet DS = new DataSet();
            da.Fill(DS);

            return DS;

        }
        protected void Valider9_Click(object sender, EventArgs e)
        {

            string NomCate = LableCateInpute.Value;
            string NomsportCateRecup = selectSport8.SelectedItem.Value;

            FonctionsUtiles maFonctionUtile = new FonctionsUtiles();
            string SportCateRecup = maFonctionUtile.getDataIdClub2(NomsportCateRecup);
            maFonctionUtile.insertCategorie(SportCateRecup, NomCate);

            Response.Redirect("ValidationFormulaireCategorie.aspx");
        }
    }
}