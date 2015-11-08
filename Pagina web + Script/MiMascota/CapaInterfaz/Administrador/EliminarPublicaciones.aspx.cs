using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
namespace CapaInterfaz.Administrador
{
    public partial class EliminarPublicaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscarPublicacionId_Click(object sender, EventArgs e)
        {
            NegocioAdministrador.accederEliminacionPublicacion(int.Parse(ddlListaEli.Text));
            lblMensaje.Text = "Eliminado Correctamente";
        }
    }
}