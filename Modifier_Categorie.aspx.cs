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
    public partial class Modifier_Categorie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                FonctionsUtiles maFonctionsUtiles = new FonctionsUtiles();
                string IdCategorie = Request.QueryString["id-Categorie"];
                List<string> lister = maFonctionsUtiles.getDataModifCate(IdCategorie);
                string id = lister[0];
                string nomCate = lister[1];
                string Id_Club2 = lister[2];
                string nomSport = lister[3];

                Modification.DataSource = GetData("spGetClub", null);
                Modification.DataBind();

                ListItem liSport = new ListItem("Select Sport", "-1");
                Modification.Items.Insert(0, liSport);

                Idinput.Value = id;
                nomCateInput.Value = nomCate;
                
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

        protected void Button6_Click(object sender, EventArgs e)
        {
            string IdRecup = Idinput.Value;
            string LabelRecup = nomCateInput.Value;
            string Id_Club2Recup = Modification.SelectedValue;

            FonctionsUtiles maFonctionUtile = new FonctionsUtiles();
            string nomSportRecup = maFonctionUtile.getDataIdClub2(Id_Club2Recup);
            maFonctionUtile.UpdateCategorie(IdRecup, LabelRecup, nomSportRecup);

            Response.Redirect("ValidationFormulaireCategorie.aspx");
        }
    }
}