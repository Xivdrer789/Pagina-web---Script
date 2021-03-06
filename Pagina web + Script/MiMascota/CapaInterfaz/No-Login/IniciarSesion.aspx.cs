﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using CapaEntidades;
namespace CapaInterfaz.No_Login
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                Session["Registro"] = determinarEstadoSesion(txtNombreUsuario.Text, txtContraseña.Text);
                if ((Usuario)Session["Registro"] is Usuario)
                {
                    Response.Redirect("~/Login/InicioLogin.aspx", false);
                }
                else
                {
                    Response.Redirect("~/Administrador/InicioAdmin.aspx", false);
                }
            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message;
            }
        }

        private Object determinarEstadoSesion(string nombre, string pass)
        {
            if (nombre.Equals("Ivan") && pass.Equals(":v"))
            {
                return NegocioAdministrador.Login(nombre, pass);
            }
            else
            {
                return NegocioUsuarios.Login(nombre,pass);
            }
        }
    }
}