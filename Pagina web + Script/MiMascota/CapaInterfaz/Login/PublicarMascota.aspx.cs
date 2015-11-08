using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;
using System.IO;
namespace CapaInterfaz.Login
{
    public partial class PublicarMascota : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario us = (Usuario)Session["Registro"];
                Publicacion pub = new Publicacion();
                string guid = Guid.NewGuid().ToString();
                pub.Usuario_id = us.id_usuario;
                pub.descripcion_publicacion = txbDescripcion.Text;
                pub.Fecha_Perdida = (DateTime)cFechaPerdida.SelectedDate;
                pub.nombre_publicacion = txbNombrePublicacion.Text;
                Mascota pet = new Mascota();
                pet.edad_mascota = int.Parse(txbEdadMascota.Text);
                pet.nombre_mascota = txbNombreMascota.Text;
                pet.tamaño_mascota = txbTamañoMascota.Text + lblMetros.Text;
                if (FileUpload1.HasFile)
                {
                    string path = Server.MapPath("ImagenesSubidas\\");
                    string nombreDeImagen = guid + FileUpload1.FileName;
                    FileUpload1.SaveAs(path + nombreDeImagen);
                }
                pub.imagen_publicacion = FileUpload1.FileBytes;
                NegocioUsuarios.accederIngresoPublicacion(pub,pet);
            }
            catch (Exception ex)
            {

                lblMensaje.Text = ex.Message;
            }
        }


    }
}