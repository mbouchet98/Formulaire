using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Formulaire2
{
    public class classeAdherant
    {
        private int Id;
        private string Nom;
        private string Prenom;
        private string Categorie;
        private string Adresse;
        private int Id_Club;

        public classeAdherant(int lId, string leNom, string lePrenom, string laCategorie, string lAdresse, int lId_Club)
        {
            Id = lId;
            Nom = leNom;
            Prenom = lePrenom;
            Categorie = laCategorie;
            Adresse = lAdresse;
            Id_Club = lId_Club;
        }

        public int gsId
        {
            get
            {
                return Id;
            }
            set
            {
                Id = value;
            }
        }

        public string gsNom
        {
            get
            {
                return Nom;
            }
            set
            {
                Nom = value;
            }
        }

        public string gsPrenom
        {
            get
            {
                return Prenom;
            }
            set
            {
                Prenom = value;
            }
        }

        public string gsCategorie
        {
            get
            {
                return Categorie;
            }
            set
            {
                Categorie = value;
            }
        }

        public string gsAdresse
        {
            get
            {
                return Adresse;
            }
            set
            {
                Adresse = value;
            }
        }

        public int gsId_Club
        {
            get
            {
                return Id_Club;
            }
            set
            {
                Id_Club = value;
            }
        }
    }
}