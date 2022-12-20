using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GestioneCantiere.Classi
{
    public class Pagamenti {

        public int IDpagamenti { get; set; }
        public DateTime DataPagamento { get; set; }

        public decimal Stipendio { get; set; }

        public int ID_dipendenti { get; set; }








    }
}