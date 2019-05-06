using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Formulaire2
{
    public class classeClub
    {
        private int Id;
        private string NomSport;
        private int NbAdherantMax;
        private int prix;

        public classeClub(int lId, string leNomSport, int leNbAdherantMax, int leprix)
        {
            Id = lId;
            NomSport = leNomSport;
            NbAdherantMax = leNbAdherantMax;
            prix = leprix;
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

        public string gsNomSport
        {
            get
            {
                return NomSport;
            }
            set
            {
                NomSport = value;
            }
        }

        public int gsNbAdherantMax
        {
            get
            {
                return NbAdherantMax;
            }
            set
            {
                NbAdherantMax = value;
            }
        }

        public int gsprix
        {
            get
            {
                return prix;
            }
            set
            {
                prix = value;
            }
        }     
    }
}