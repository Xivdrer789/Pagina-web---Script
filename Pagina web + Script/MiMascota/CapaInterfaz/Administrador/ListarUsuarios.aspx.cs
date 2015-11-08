using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;

namespace CapaInterfaz.Administrador
{
    public partial class ListarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnListarUsuarios_Click(object sender, EventArgs e)
        {
            try
            {
                gvListarUsuarios.DataSource = NegocioUsuarios.tenerUsuarios();
                gvListarUsuarios.DataBind();
            }
            catch (Exception ex)
            {
                throw;

            }
        }
    }
}