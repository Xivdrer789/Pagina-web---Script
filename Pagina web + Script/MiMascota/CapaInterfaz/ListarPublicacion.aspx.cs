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
    public partial class ListarPublicacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnListar_Click(object sender, EventArgs e)
        {
            try
            {
                gvListarPublicacion.DataSource = CapaNegocio.ReglasDeNegocio.tenerPublicaciones();
                gvListarPublicacion.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}