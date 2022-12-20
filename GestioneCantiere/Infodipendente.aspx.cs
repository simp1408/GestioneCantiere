using GestioneCantiere.Classi;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestioneCantiere
{
    public partial class Infodipendente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string id = Request.QueryString["IDdipendenti"];

            Dipendenti d = Dipendenti.getOneDipendente(id);

            LblNome.Text = d.Nome;
            LblCognome.Text = d.Cognome;
            LblCF.Text = d.CF;
            LblConiugato.Text = Convert.ToBoolean( d.Coniugato).ToString();
            LblFigliCarico.Text =Convert.ToInt32(d.FigliCarico).ToString();
            LblMansione.Text = d.Mansione;
          
        }
    }
}