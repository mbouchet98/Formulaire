using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace Formulaire2
{
    public class FonctionsUtiles
    {

        ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];

        public FonctionsUtiles() { }

        //navigationbar.
        //public string getNavBar()
        //{
        //    string html = "<nav class='navbar navbar-inverse'><div class='container-fluid'><div class='navbar-header'><a class='navbar-brand' href='CCpg.aspx'>CCPG</a></div><ul class='nav navbar-nav'><li class='active'><a href = 'Accueil.aspx' > Accueil </ a ></ li ><li class='dropdown'><a class='dropdown-toggle' data-toggle='dropdown' href='#'>Adhérant<span class='caret'></span></a><ul class='dropdown-menu'><li><a href = 'Adherant.aspx' > Table Adhérant</a></li><li><a href = 'Formulaire.aspx' > Ajouter Adhérant</a></li></ul></li><li class='dropdown'><a class='dropdown-toggle' data-toggle='dropdown' href='#'>Club Et Sport<span class='caret'></span></a><ul class='dropdown-menu'><li><a href = 'Club.aspx' > Table Club</a></li><li><a href = 'FormulaireClub.aspx' > Ajouter Club</a></li></ul></li><li class='dropdown'><a class='dropdown-toggle' data-toggle='dropdown' href='#'>Categorie par Club<span class='caret'></span></a><ul class='dropdown-menu'><li><a href = 'Categorie.aspx' > Table Categorie</a></li><li><a href = 'FormulaireCategorie.aspx' > Ajouter Categorie</a></li></ul></li></ul></div></nav>";
        //    return html;
        //}

        // connection bdd et affichage table htlm -/
        public string getDatasAdherant()
        {
            string html = "<table class='table table-bordered' style='width: 1000px; border: 2px solid brown; margin: auto; border-collapse: separate; '><thead><tr><th>Id</th><th>Nom</th><th>Prenom</th><th>Adresse</th><th>Sport/Club</th><th>Categorie</th><th>Email</th><th>DateNaissance</th></tr></thead>";

            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();

            DataTable table = new DataTable();
            string Query = "SELECT * FROM ADHERANT order by Nom ASC";
            using (var cmd = new SqlCommand(Query, con))
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(table);
                foreach (DataRow row in table.Rows)
                {
                    string Id = row["Id_Adh"].ToString();
                    string Nom = row["Nom"].ToString();
                    string Prenom = row["Prenom"].ToString();
                    string Adresse = row["Adresse"].ToString();

                    string Id_Club = row["Id_Club"].ToString();
                    // Jointure CLub.
                    string nomSport = getDataNomSportById(Id_Club);

                    string Id_Categorie = row["Id_Categorie"].ToString();
                    // Jointure Categorie.
                    string maCategorie = getDataLabelById(Id_Categorie);

                    string Email = row["Email"].ToString();
                    string DateNaissance = row["DateNaissance"].ToString();

                    html += "<tbody><tr><td>" + Id + "</td><td>" + Nom + "</td><td>" + Prenom + "</td>" +
                        "<td>" + Adresse + "</td><td>" + nomSport + "</td><td>" + maCategorie + "</td>" +
                        "<td>" + Email + "</td><td>" + DateNaissance + "</td>" +
                        "<td><a href='/Modifier_Adherant.aspx?id-Adherant=" + Id + "'>Modifier</a></td>" +
                        "<td><a href='/Supprimer_Adherant.aspx?id-Adherant=" + Id + "'>Supprimer</a></td>" +
                        "</tr></tbody>";
                }

                html += "</table>";
            }
            con.Close();
            return html;
        }

        public string getDataClub()
        {
            string html = "<table class='table table-bordered' style='width: 1000px; border: 2px solid brown; margin: auto; border-collapse: separate; '><thead><tr><th>Id</th><th>NomSport</th><th>NbAdherantMax</th><th>prix</th></tr></thead>";
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);

            con.Open();
            DataTable table = new DataTable();
            string Query = "SELECT * FROM CLUB order by nomSport ASC";
            using (var cmd = new SqlCommand(Query, con))
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(table);
                foreach (DataRow row in table.Rows)
                {
                    string Id = row["Id"].ToString();
                    string NomSport = row["NomSport"].ToString();
                    string NbAdherantMax = row["NbAdherantMax"].ToString();
                    // permettra de faire la jointure avec Adherant.
                    string prix = row["prix"].ToString();

                    html += "<tbody><tr><td>" + Id + "</td><td>" + NomSport + "</td><td>" + NbAdherantMax + "</td><td>" + prix + "</td><td><input id='modifier1' type='button' value='Modifier' /></td><td><a href='/Supprimer_Club.aspx?id-Club=" + Id + "'>Supprimer</a></td></tr></tbody>";
                }

                html += "</table>";
            }
             con.Close();
            return html;
           
        }

        public string getDataCategorie()
        {
            string html = "<table class='table table-bordered' style='width: 1000px; border: 2px solid brown; margin: auto; border-collapse: separate; '><thead><tr><th>Id</th><th>Nom</th><th>Sport/Club</th></tr></thead>";
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);

            con.Open();
            DataTable table = new DataTable();
            string Query = "SELECT * FROM CATEGORIE order by Id_Club2 ASC";
            using (var cmd = new SqlCommand(Query, con))
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(table);
                foreach (DataRow row in table.Rows)
                {
                    string Id = row["Id_Cate"].ToString();
                    string Label = row["Label"].ToString();
                    string Id_Club2 = row["Id_Club2"].ToString();
                    // Jointure CLub2.
                    string monsport2 = getDatanomSport2ById(Id_Club2);
                    // rajouter les bouton supprimer et modifier(dans html).
                    html += "<tbody><tr><td>" + Id + "</td><td>" + Label + "</td><td>" + monsport2 + "</td><td><asp:LinkButton ID='modifierCate' runat='server' href='Categorie.aspx? id-Categorie = '" + Id + "' >Modifier</asp:LinkButton><a href='/Modifier_Categorie.aspx?id-Categorie=" + Id + "'>Modifier</a></td><td><a href='/SuppressionCategorie.aspx?id-Categorie=" + Id + "'>Supprimer</a></td></tr></tbody>";
                }

                html += "</table>";
            }
            con.Close();
            return html;
        }
            
        // Fonction qui fait la jointure./
        // Faire la reference dans les modifs./
        public string getDataNomSportById(string id_Club)
        {
            string nomSport = "";
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);

            con.Open();
            DataTable table = new DataTable();
            string Query = "select nomSport FROM CLUB WHERE Id=" + id_Club;
            using (var cmd = new SqlCommand(Query, con))
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(table);

                foreach (DataRow row in table.Rows)
                {
                    nomSport = row["nomSport"].ToString();
                }
            }
            con.Close();
            return nomSport;
        }
        
        public string getDatanomSport2ById(string Id_Club2)
        {
            string monsport2 = "";
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);

            con.Open();
            DataTable table = new DataTable();
            string Query = "select nomSport FROM CLUB WHERE Id=" + Id_Club2;
            using (var cmd = new SqlCommand(Query, con))
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(table);

                foreach (DataRow row in table.Rows)
                {
                    monsport2 = row["nomSport"].ToString();
                }
            }
            con.Close();
            return monsport2;
        }

        public string getDataLabelById(string Id_Categorie)
            {
                string maCategorie = "";
                //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
                SqlConnection con = new SqlConnection(connectSetting.ConnectionString);

                con.Open();
                    DataTable table = new DataTable();
                    string Query = "select Label FROM CATEGORIE WHERE Id_Cate=" + Id_Categorie;
                    using (var cmd = new SqlCommand(Query, con))
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter();
                        adapter.SelectCommand = cmd;
                        adapter.Fill(table);

                        foreach (DataRow row in table.Rows)
                        {
                         maCategorie = row["Label"].ToString();
                        }
                        con.Close();
                        return maCategorie;
                    }
            }

        // modif adh/
        public List<string> GetDataAdherantById(string IdAdherant)
        {
            List<string> datas = new List<string>();
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);

            con.Open();
            DataTable table = new DataTable();
            string Query = "select * FROM ADHERANT WHERE Id_Adh= " + IdAdherant;
            using (var cmd = new SqlCommand(Query, con))
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(table);
                foreach (DataRow row in table.Rows)
                {

                    string Id = row["Id_Adh"].ToString();
                    string Id_Club = row["id_Club"].ToString();
                    string nomSport = getDataNomSportById(Id_Club);
                    string Nom = row["Nom"].ToString();
                    string Prenom = row["Prenom"].ToString();
                    string Adresse = row["Adresse"].ToString();
                    string Id_Categorie = row["Id_Categorie"].ToString();
                    string maCategorie = getDataLabelById(Id_Categorie);
                    string Email = row["Email"].ToString();
                    string DateNaissance = row["DateNaissance"].ToString();

                    datas.Add(Id);
                    datas.Add(Id_Club);
                    datas.Add(nomSport);
                    datas.Add(Nom);
                    datas.Add(Prenom);
                    datas.Add(Adresse);
                    datas.Add(Id_Categorie);
                    datas.Add(maCategorie);
                    datas.Add(Email);
                    datas.Add(DateNaissance);
                }
            }
            con.Close();
            return datas;
        }

        // add sport & modif adh /
        public string getIdSportByNom(string nomSport)
        {
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);

            con.Open();

            DataTable table1 = new DataTable();
            string Id = "";
            string Query1 = "select Id FROM CLUB WHERE nomSport = '" + nomSport + "'";
            using (var cmd1 = new SqlCommand(Query1, con))
            {

                SqlDataAdapter adapter1 = new SqlDataAdapter();
                adapter1.SelectCommand = cmd1;
                adapter1.Fill(table1);

                foreach (DataRow row in table1.Rows)
                {
                    Id = row["Id"].ToString();
                }

            }
            con.Close();
            return Id;
        }

        public string getIdCateByLabel(string maCate)
        {
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);

            con.Open();

            DataTable table1 = new DataTable();
            string Id = "";
            string Query1 = "select Id FROM CATEGORIE WHERE Label = '" + maCate + "'";
            using (var cmd1 = new SqlCommand(Query1, con))
            {

                SqlDataAdapter adapter1 = new SqlDataAdapter();
                adapter1.SelectCommand = cmd1;
                adapter1.Fill(table1);

                foreach (DataRow row in table1.Rows)
                {
                    Id = row["Id"].ToString();
                }

            }
            con.Close();
            return Id;
        }

        // modif adh & formulaire/
        public List<Tuple<string, string>> getAllSport()
        {
            List<Tuple<string, string>> datas = new List<Tuple<string, string>>();

            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);

            con.Open();

            DataTable table = new DataTable();
            string Query = "select * FROM CLUB ";
            using (var cmd = new SqlCommand(Query, con))
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(table);

                foreach (DataRow row in table.Rows)
                {
                    string nomSport = row["nomSport"].ToString();
                    string id = row["Id"].ToString();
                    Tuple<string, string> tup = new Tuple<string, string>(id, nomSport);
                    datas.Add(tup);

                }
            }
            con.Close();
            return datas;
        }

        public List<Tuple<string, string>> getAllCate()
        {
            List<Tuple<string, string>> datas = new List<Tuple<string, string>>();
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            DataTable table = new DataTable();
            string Query = "select * FROM CATEGORIE ";
            using (var cmd = new SqlCommand(Query, con))
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(table);

                foreach (DataRow row in table.Rows)
                {
                    string maCate = row["Label"].ToString();
                    string id = row["Id"].ToString();
                    Tuple<string, string> tup = new Tuple<string, string>(id, maCate);
                    datas.Add(tup);

                }
            }
            con.Close();
            return datas;
        }

        // formulaire, modif et enregistrement /
        public string getDataIdClub(string Id_ClubRecup)
        {
            string nomSport = "";
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            DataTable table1 = new DataTable();
            string Query1 = "select id FROM CLUB WHERE Id=" + Id_ClubRecup;
            using (var cmd1 = new SqlCommand(Query1, con))
            {
                SqlDataAdapter adapter1 = new SqlDataAdapter();
                adapter1.SelectCommand = cmd1;
                adapter1.Fill(table1);
                foreach (DataRow row in table1.Rows)
                {
                    nomSport = row["id"].ToString();
                }
            }
            con.Close();
            return nomSport;
        }

        public string getDataIdClub2(string Id_Club2Recup)
        {
            string nomSport = "";
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            DataTable table1 = new DataTable();
            string Query1 = "select id FROM CLUB WHERE Id=" + Id_Club2Recup;
            using (var cmd1 = new SqlCommand(Query1, con))
            {
                SqlDataAdapter adapter1 = new SqlDataAdapter();
                adapter1.SelectCommand = cmd1;
                adapter1.Fill(table1);
                foreach (DataRow row in table1.Rows)
                {
                    nomSport = row["id"].ToString();
                }
            }
            con.Close();
            return nomSport;
        }

        public string getDataIdCate(string Id_CategorieRecup)
        {
            string maCate = "";
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            DataTable table1 = new DataTable();
            string Query1 = "select id FROM CATEGORIE WHERE Id=" + Id_CategorieRecup;
            using (var cmd1 = new SqlCommand(Query1, con))
            {
                SqlDataAdapter adapter1 = new SqlDataAdapter();
                adapter1.SelectCommand = cmd1;
                adapter1.Fill(table1);
                foreach (DataRow row in table1.Rows)
                {
                    maCate = row["id"].ToString();
                }
            }
            con.Close();
            return maCate;
        }

        //formulaire/
        public void insertAdherant(string Id_ClubRecup, string nomRecup, string prenomRecup, string adresseRecup, string Id_CateRecup, string emailRecup, string dateNaissanceRecup)
        {
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            string Query = "insert into Adherant(Id_Club, Nom, Prenom, Adresse, Id_Categorie, Email, DateNaissance) values('" + Id_ClubRecup + "','" + nomRecup + "','" + prenomRecup + "','" + adresseRecup + "','" + Id_CateRecup + "','" + emailRecup + "','" + dateNaissanceRecup + "')";
            using (var cmd = new SqlCommand(Query, con))
            {
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }

        // enregistrement BDD/
        public void UpdateAdherant(string Id_ClubRecup, string nomRecup, string prenomRecup, string adresseRecup, string Id_CategorieRecup, string idRecup, string emailRecup, string DateNaissanceRecup)
        {
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            string Query = "Update ADHERANT set Id_Club='" + Id_ClubRecup + "', Nom='" + nomRecup + "', Prenom='" + prenomRecup + "', Adresse='" + adresseRecup + "', Id_Categorie='" + Id_CategorieRecup + "', DateNaissance='" + DateNaissanceRecup + "',  Email='" + emailRecup + "' where id='" + idRecup + "'";
            using (var cmd = new SqlCommand(Query, con))
            {
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }

        public void UpdateClub(string IdRecup, string nomSportRecup, string NbAdherantMaxRecup, string prixRecup)
        {

            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            string Query = "Update CLUB set  nomSport='" + nomSportRecup + "', NbAdherantMax='" + NbAdherantMaxRecup + "', prix='"+ prixRecup + "' where id='" + IdRecup + "'";
            using (var cmd = new SqlCommand(Query, con))
            {

                cmd.ExecuteNonQuery();

            }

            con.Close();
        }

        // add sport/
        public void insertClub(string NbAdherantMaxRecup, string nomSportRecup, string prixRecup)
        {
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            string Query = "insert into CLUB(NbAdherantMax, nomSport, prix) values('" + NbAdherantMaxRecup + "','" + nomSportRecup + "','" + prixRecup + "')";
            using (var cmd = new SqlCommand(Query, con))
            {
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }

        // supprimer/
        public void DeleteAdherant(string idRecup)
        {
        //    ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            string Query = "Delete from Adherant where id='" + idRecup + "'";
            using (var cmd = new SqlCommand(Query, con))
            {
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }

        public void DeleteClub(string idRecup)
        {
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();

            //string id_ClubRecup = getDataIdClub(idRecup);
            //string Query3 = "Delete from ADHERANT where Id_Club='" + id_ClubRecup + "'";
            //using (var cmd3 = new SqlCommand(Query3, con))
            //{
            //    cmd3.ExecuteNonQuery();
            //}
            string Query = "Delete from CLUB where Id='" + idRecup + "'";
            using (var cmd = new SqlCommand(Query, con))
            {
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }

        // modif sport/
        public List<string> getDataNomSportById_Sport(string Spt)
        {
            List<string> datas = new List<string>();
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            DataTable table = new DataTable();
            string Query = "select * FROM CLUB WHERE Id=" + Spt;
            using (var cmd = new SqlCommand(Query, con))
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(table);
                foreach (DataRow row in table.Rows)
                {
                    string Id = row["id"].ToString();
                    string nomSport = row["nomSport"].ToString();
                    string NbAdherantMax = row["NbAdherantMax"].ToString();
                    string prix = row["prix"].ToString();

                    datas.Add(Id);
                    datas.Add(nomSport);
                    datas.Add(NbAdherantMax);
                    datas.Add(prix);
                }

                con.Close();
                return datas;
            }
        }

        //modif Categorie.
        public List<string> getDataModifCate(string IdCategorie)
        {
            List<string> datas = new List<string>();
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            DataTable table = new DataTable();
            string Query = "select * FROM CATEGORIE WHERE Id=" + IdCategorie;
            using (var cmd = new SqlCommand(Query, con))
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                adapter.Fill(table);
                foreach (DataRow row in table.Rows)
                {
                    string Id = row["Id"].ToString();
                    string nomCate = row["Label"].ToString();
                    string Id_Club2 = row["Id_Club2"].ToString();
                    string NomDuSport = getDatanomSport2ById(Id_Club2);


                    datas.Add(Id);
                    datas.Add(nomCate);
                    datas.Add(Id_Club2);
                    datas.Add(NomDuSport);
                }

                con.Close();
                return datas;
            }
        }

        // Eregistrement BDD.
        public void UpdateCategorie(string IdRecup, string LabelRecup, string nomSportRecup)
        {
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            string Query = "Update CATEGORIE set Label='" + LabelRecup + "', Id_Club2='" + nomSportRecup + "' where Id='" + IdRecup + "'";
            using (var cmd = new SqlCommand(Query, con))
            {
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }

        // add Categorie.
        public void insertCategorie(string SportCateRecup, string NomCate)
        {
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            string Query = "insert into CATEGORIE(Id_Club2, Label) values('" + SportCateRecup + "','" + NomCate + "')";
            using (var cmd = new SqlCommand(Query, con))
            {
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }

        // supp Categorie
        public void DeleteCategorie(string IdRecup)
        {
            //ConnectionStringSettings connectSetting = ConfigurationManager.ConnectionStrings["ConnectionBDD"];
            SqlConnection con = new SqlConnection(connectSetting.ConnectionString);
            con.Open();
            string Query = "Delete from CATEGORIE where Id='" + IdRecup + "'";
            using (var cmd = new SqlCommand(Query, con))
            {
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }
    }
}


