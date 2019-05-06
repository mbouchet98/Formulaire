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
    public partial class Modifier_Adherant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FonctionsUtiles maFonctionsUtiles = new FonctionsUtiles();
                string IdAdherant = Request.QueryString["id-Adherant"];

                List<string> lister = maFonctionsUtiles.GetDataAdherantById(IdAdherant);
                string id = lister[0];
                string id_Club = lister[1];
                string nomSport = lister[2];
                string Nom = lister[3];
                string Prenom = lister[4];
                string Adres = lister[5];
                string id_Cate = lister[6];
                string maCate = lister[7];
                string email = lister[8];
                string DateNaissance = lister[9];

            
                Modification.DataSource = GetData("spGetClub", null);
                Modification.DataBind();

                ListItem liSport = new ListItem("Select Sport", "-1");
                Modification.Items.Insert(0, liSport);

                ListItem liCate = new ListItem("Select Categorie", "-1");
                ModCategorie.Items.Insert(0, liCate);

                ModCategorie.Enabled = false;


                Modification.SelectedValue = nomSport;
                nom.Text = Nom;
                prenom.Text = Prenom;
                Adresse.Text = Adres;
                Email.Text = email;
                dateNaissance.Value = DateNaissance;
                Id.Value = id;
                ModCategorie.SelectedValue = id_Cate;
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nomRecup = nom.Text;
            string prenomRecup = prenom.Text;
            string adresseRecup = Adresse.Text;
            string idRecup = Id.Value;
            string Id_ClubRecup = Modification.SelectedValue;
            string Id_CategorieRecup = ModCategorie.SelectedValue;
            string emailRecup = Email.Text;
            string DateNaissanceRecup = dateNaissance.Value;

            FonctionsUtiles maFonctionUtile = new FonctionsUtiles();
            string nomSportRecup = maFonctionUtile.getDataIdClub(Id_ClubRecup);
            string maCategorieRecup = maFonctionUtile.getDataIdCate(Id_CategorieRecup);
            maFonctionUtile.UpdateAdherant(nomSportRecup, nomRecup, prenomRecup, adresseRecup, maCategorieRecup, idRecup, emailRecup, DateNaissanceRecup);

            Response.Redirect("ValidationFormulaire.aspx");
        }

        protected void Modification_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Modification.SelectedIndex == 0)
            {
                ModCategorie.SelectedIndex = 0;
                ModCategorie.Enabled = false;
            }
            else
            {
                ModCategorie.Enabled = true;
                SqlParameter parameter = new SqlParameter("@Id_Club2", Modification.SelectedValue);
                DataSet DS = GetData("spGetCategorieByClubId", parameter);

                ModCategorie.DataSource = DS;
                ModCategorie.DataBind();

                ListItem liCate = new ListItem("Select Categorie", "-1");
                ModCategorie.Items.Insert(0, liCate);
            }
        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {

            Response.Write("Test");
        }
    }
}