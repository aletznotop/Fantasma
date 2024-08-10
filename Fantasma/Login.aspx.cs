﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fantasma.BAL;
using Microsoft.Ajax.Utilities;

namespace Fantasma
{
    public partial class Login : System.Web.UI.Page
    {
        BUsuario bUsuario = new BUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Obtener el nombre de usuario y contraseña ingresados
            string usuario = txtUsuario.Text;
            string contrasena = txtContrasena.Text;

            // Encriptar la contraseña (ejemplo usando BCrypt)
            string contrasenaEncriptada = contrasena;

            // Validar las credenciales contra la base de datos
            // (Reemplaza esta parte con tu lógica de acceso a la base de datos)
            if (ValidarUsuario(usuario, contrasenaEncriptada))
            {
                // Crear una sesión para identificar al usuario
                var userId = Guid.NewGuid().ToString();
                FormsAuthentication.SetAuthCookie(usuario, true);
                Session["usuario"] = usuario;
                Session["valida"] = true;
                Response.Redirect("Default.aspx");
            }
            else
            {
                // Mostrar mensaje de error
                lblError.Text = "Usuario o contraseña incorrectos.";
            }
        }

        private bool ValidarUsuario(string usuario, string contrasenaEncriptada)
        {
            // Aquí va tu lógica para consultar la base de datos y comparar las contraseñas
            bool ValidaUsuario = bUsuario.GetUsuario();
            return ValidaUsuario; // Ejemplo de retorno falso si no se encuentra el usuario
        }
    }
}