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
    public partial class addDipendente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAddDipendente_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnGestionaleCantiere"].ToString();
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "AddDipendente";

            command.Connection= connection;

            command.Parameters.AddWithValue("Nome", TextNome.Text);
            command.Parameters.AddWithValue("Cognome",TextCognome.Text);
            command.Parameters.AddWithValue("CF",TextCF.Text);
            command.Parameters.AddWithValue("FigliCarico",TextFigliCarico.Text);
            command.Parameters.AddWithValue("Mansione",TextMansione.Text);

            if(CheckConiugato.Checked) 
            {
                command.Parameters.AddWithValue("Coniugato", true);

            }
            else
            {
                command.Parameters.AddWithValue("Coniugato", false);

            }
            int row= command.ExecuteNonQuery();
            if(row > 0) 
            {
                LblAddDipendente.Text = "dipendente aggiunto con successo";
                LblAddDipendente.Visible= true; 


            }
            connection.Close(); 
            


        }
    }
}