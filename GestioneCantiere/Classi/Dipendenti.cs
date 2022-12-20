using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GestioneCantiere.Classi
{
    public class Dipendenti
    {
        public int IDdipendenti { get; set; }
        public string Nome { get; set; }
        public string Cognome { get; set; }

        public string CF { get; set; }

        public bool Coniugato { get; set; }

        public int FigliCarico { get; set; }

        public string Mansione { get; set; }

        public static List<Dipendenti> getAllDipendenti()
        {
            List<Dipendenti> lDipendente = new List<Dipendenti>();

            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnGestionaleCantiere"].ToString();
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.CommandText = "Select * From DIPENDENTI";
            command.Connection = connection;
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read()) {
                Dipendenti d = new Dipendenti();
                d.IDdipendenti = Convert.ToInt32(reader["IDdipendenti"]);
                d.Nome = reader["Nome"].ToString();
                d.Cognome = reader["Cognome"].ToString();
                d.CF = reader["CF"].ToString();
                d.Coniugato = Convert.ToBoolean(reader["Coniugato"]);
                d.FigliCarico = Convert.ToInt32(reader["FigliCarico"]);
                d.Mansione = reader["Mansione"].ToString();

                lDipendente.Add(d);
          
            }
            connection.Close();
            return lDipendente;
          

        }

        public static Dipendenti getOneDipendente(string id) 
        {
            SqlConnection connection= new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnGestionaleCantiere"].ToString();
            connection.Open();

           
            SqlCommand command = new SqlCommand();
            command.Parameters.AddWithValue("IDdipendenti", id);
            command.CommandText = "SELECT * FROM DIPENDENTI WHERE IDdipendenti= @IDdipendenti";
            command.Connection = connection;

           

            SqlDataReader reader= command.ExecuteReader();

            Dipendenti d = new Dipendenti();    
            if(reader.HasRows) 
            { 
                while(reader.Read()) 
                {
                    d.IDdipendenti = Convert.ToInt32(reader["IDdipendenti"]);
                    d.Nome = reader["Nome"].ToString();
                    d.Cognome = reader["Cognome"].ToString();
                    d.CF = reader["CF"].ToString() ;
                    d.Coniugato= Convert.ToBoolean(reader["Coniugato"]);
                    d.FigliCarico = Convert.ToInt32(reader["FigliCarico"]);
                    d.Mansione = reader["Mansione"].ToString();
        
                }


            }
            connection.Close();
            return d;
        

        
        }

    }


}