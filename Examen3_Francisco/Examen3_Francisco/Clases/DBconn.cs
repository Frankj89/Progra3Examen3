using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Examen3_Francisco.Clases
{
    public class DBconn
    {
        public static SqlConnection obtenerConexion()
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion1"].ConnectionString;
            SqlConnection conexion1 = new SqlConnection(s);
            conexion1.Open();
            return conexion1;
        }
    }
}