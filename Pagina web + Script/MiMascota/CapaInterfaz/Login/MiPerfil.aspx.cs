using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
namespace CapaInterfaz.Login
{
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Usuario us = (Usuario)Session["Registro"];
                lblNombre.Text = us.nombre_usuario;
                lblApellido.Text = us.apellido_usuario;
                lblEdad.Text = us.edad_usuario.ToString();
                lblCorreo.Text = us.correo_usuario;
                lblUsuario.Text = us.login_usuario; 
            }
        }
    }
}