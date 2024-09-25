using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Fantasma.App_Start
{
    public sealed class Conexion
    {
        // Instancia única de la clase Conexion
        private static readonly Lazy<Conexion> instancia = new Lazy<Conexion>(() => new Conexion());

        private SqlConnection conecta;
        private static readonly string cadenaConexion = ConfigurationManager.ConnectionStrings["SQLConexion"].ConnectionString;

        // Constructor privado para evitar instanciación directa
        private Conexion()
        {
            conecta = new SqlConnection(cadenaConexion);
        }

        // Propiedad para acceder a la instancia única
        public static Conexion Instancia
        {
            get
            {
                return instancia.Value;
            }
        }

        // Método para obtener la conexión SQL
        public SqlConnection ObtenerConexion()
        {
            if (conecta.State != System.Data.ConnectionState.Open)
            {
                conecta.Open();
            }
            return conecta;
        }

        // Método para cerrar la conexión
        public void CerrarConexion()
        {
            if (conecta.State != System.Data.ConnectionState.Closed)
            {
                conecta.Close();
            }
        }
    }
}
