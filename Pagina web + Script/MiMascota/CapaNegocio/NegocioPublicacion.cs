using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocio
{
    public class NegocioPublicacion
    {
        static AccesoPublicacion acceso = new AccesoPublicacion();

        #region listar todo
        public static List<Publicacion> tenerPublicaciones()
        {
            return acceso.returnPublicaciones();
        }
        #endregion

        #region Comprobar listado

        #endregion


    }
}
