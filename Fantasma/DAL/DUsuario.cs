using Fantasma.App_Start;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Fantasma.DAL
{
    public class DUsuario
    {
        public bool GetUsuario(string usuario)
        {
            SqlCommand Comando = new SqlCommand();
            bool usua = true;
            try
            {
                //SqlConnection conexion = Conexion.Instancia.ObtenerConexion();
                //Comando.Connection = conexion;
                //Comando.CommandText = @"SEGURIDAD.SSP_GETUSUARIOCONTRASENA";
                //Comando.CommandType = CommandType.StoredProcedure;
                //Comando.Parameters.AddWithValue("@INUSUARIO", SqlDbType.VarChar).Value = usuario;
                //SqlDataReader reader = Comando.ExecuteReader();
                usua = true;
            }catch(Exception ex)
            {
                usua = false;
                throw ex;
            }
            finally
            {
                Conexion.Instancia.CerrarConexion();
            }
            return usua;
        }
    }
}