using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;

namespace CapaInterfaz.No_Login
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario user = new Usuario();
                user.Administrador_id = 1;
                user.nombre_usuario = txtNombre.Text;
                user.apellido_usuario = txtApellido.Text;
                user.edad_usuario = int.Parse(txtEdad.Text);
                user.correo_usuario = txtCorreo.Text;
                user.login_usuario = txtNombreUsuario.Text;
                user.password_usuario = txtContraseña.Text;
                NegocioUsuarios.comprobacionGuardado(user);
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
}