using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Formulaire2
{
    public class classeCategoriecs
    {
        private int Id;
        private string Label;
        private string Id_Club2;


        public classeCategoriecs(int lId, string leLabel, string lId_Club2)
        {
            Id = lId;
            Label = leLabel;
            Id_Club2 = lId_Club2;
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

        public string gsLabel
        {
            get
            {
                return Label;
            }
            set
            {
                Label = value;
            }
        }

        public string gsId_Club2
        {
            get
            {
                return Id_Club2;
            }
            set
            {
                Id_Club2 = value;
            }
        }
    }
}
