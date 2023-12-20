using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Examen3_Francisco.Clases
{
    public class ClaseEncuesta
    {
        public static int id { get; set; }
        public static string nombre { get; set; }

        public static string edadnacimiento { get; set; }

        public static string correoelectronico { get; set; }


        public ClaseEncuesta(int Id, string Nombre, string Edadnacimiento, string Correoelectronico)
        {
            id = Id;
            nombre = Nombre;
            edadnacimiento = Edadnacimiento;
            correoelectronico = Correoelectronico;
        }

        public ClaseEncuesta() { }

        public static int Agregar(string nombre, string edadnacimiento, string correoelectronico)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBconn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("AGREGARENCUESTA", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@NOMBRE", nombre));
                    cmd.Parameters.Add(new SqlParameter("@EDADNACIMIENTO", edadnacimiento));
                    cmd.Parameters.Add(new SqlParameter("@CORREOELECTRONICO", correoelectronico));


                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;

        }
    }
}