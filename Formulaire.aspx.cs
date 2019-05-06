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
    public partial class Formulaire : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FonctionsUtiles maFonctionsUtiles = new FonctionsUtiles();

                selectSport3.DataSource = GetData("spGetClub", null);
                selectSport3.DataBind();

                ListItem liSport = new ListItem("Select Sport", "-1");
                selectSport3.Items.Insert(0, liSport);

                ListItem liCate = new ListItem("Select Categorie", "-1");
                selectSport6.Items.Insert(0, liCate);

                selectSport6.Enabled = false;
                
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

        protected void Valider_Click(object sender, EventArgs e)
        {
            string nomRecup = nom.Value;
            string prenomRecup = prenom.Value;
            string adresseRecup = adresse.Value;
            string emailRecup = email.Value;
            string dateNaissanceRecup = dateNaissance.Value;
            string idcategorieRecup = selectSport6.SelectedItem.Value;
            string idRecup = selectSport3.SelectedItem.Value;

            FonctionsUtiles maFonctionUtile = new FonctionsUtiles();
            string id_ClubRecup = maFonctionUtile.getDataIdClub(idRecup);
            string Id_CateRecup = maFonctionUtile.getDataIdCate(idcategorieRecup);
            maFonctionUtile.insertAdherant(id_ClubRecup, nomRecup, prenomRecup, adresseRecup, Id_CateRecup, emailRecup, dateNaissanceRecup);

            Response.Redirect("PageValidationFrom.aspx");

        }
        protected void selectSport3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (selectSport3.SelectedIndex == 0)
            {
                selectSport6.SelectedIndex = 0;
                selectSport6.Enabled = false;

            }
            else
            {
                selectSport6.Enabled = true;
                SqlParameter parameter = new SqlParameter("@Id_Club2", selectSport3.SelectedValue);
                DataSet DS = GetData("spGetCategorieByClubId", parameter);

                selectSport6.DataSource = DS;
                selectSport6.DataBind();

                ListItem liCate = new ListItem("Select Categorie", "-1");
                selectSport6.Items.Insert(0, liCate);

            }
        }
    }
}