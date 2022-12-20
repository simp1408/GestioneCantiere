using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace GestioneCantiere
{
    public partial class Pagamenti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Stipendio_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnGestionaleCantiere"].ToString();
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "InsertPagamenti";

            command.Connection = connection;

            command.Parameters.AddWithValue("IDpagamenti",IDpagamenti);
            command.Parameters.AddWithValue("Stipendio",Stipendio);
            command.Parameters.AddWithValue("DataPagamento", DataPagamento);
            command.Parameters.AddWithValue("ID_dipendenti", ID_dipendenti);
           
            int row= command.ExecuteNonQuery();
            if(row > 0) 
            {
                lblpagamento.Visible = true;
                lblpagamento.Text = "pagamento avvenuto con successo";
               
            }
            else
            {
                lblpagamento.Text = "pagamento fallito";
            }

            connection.Close();
           
        }
    }
}