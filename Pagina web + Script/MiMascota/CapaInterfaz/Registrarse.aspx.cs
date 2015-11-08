using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;

namespace CapaInterfaz
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            var user = new Usuario();
            user.nombre_usuario = txtNombre.Text.Trim();
            user.apellido_usuario = txtApellido.Text.Trim();
            user.correo_usuario = txtCorreo.Text.Trim();
            user.edad_usuario = int.Parse(txtEdad.Text);
            user.login_usuario = txtNombreUsuario.Text.Trim();
            user.password_usuario = txtContraseña.Text;
            user.Administrador_id = 1;
            user.id_usuario = 4;
            try
            {
                ReglasDeNegocio.comprobacionGuardado(user);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}