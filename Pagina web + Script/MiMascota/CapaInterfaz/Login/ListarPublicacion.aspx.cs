﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;
namespace CapaInterfaz.Login
{
    public partial class ListarPublicacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnListarPublicacion_Click(object sender, EventArgs e)
        {
            Usuario us = (Usuario)Session["Registro"];
            gvListarPublicacion.DataSource = NegocioUsuarios.obtenerPublicacionesUsuario(us.id_usuario);
            gvListarPublicacion.DataBind();
        }
    }
}