using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using Fantasma.DAL;

namespace Fantasma.BAL
{
    public class BUsuario
    {
        DUsuario usuario = new DUsuario();
        public bool GetUsuario(string user, string contrasena)
        {
            DataTable tabla = new DataTable();
            tabla = usuario.GetUsuario(user,contrasena);
            return true;    
        }
    }
}