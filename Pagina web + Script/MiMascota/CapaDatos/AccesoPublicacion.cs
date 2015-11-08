using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.Objects;

namespace CapaDatos
{
    public class AccesoPublicacion
    {
        EF_Pagina contexto;

        #region Listar publicacion
        public List<Publicacion> returnPublicaciones()
        {
            using (contexto = new EF_Pagina())
            {
                return contexto.Publicacion.ToList();
            }
        }
        #endregion

        public List<Object> listarTodaInformacion()
        {
            List<Object> lista = new List<object>();
            using (contexto = new EF_Pagina())
            {
                ObjectQuery<Mascota> pet = contexto.Mascota;
                ObjectQuery<Publicacion> pub = contexto.Publicacion;
                var linqLista = from m in pet
                                join p in pub on m.Publicacion_id equals p.id_publicacion
                                select new
                                {
                                    nombrePublicacion = p.nombre_publicacion,
                                    fechaPerdida = p.Fecha_Perdida,
                                    imagenPulicacion = p.imagen_publicacion,
                                    descripcionPublicacion = p.descripcion_publicacion,
                                    nombreMascota = m.nombre_mascota,
                                    tamañoMascota = m.tamaño_mascota,
                                    edadMascota = m.edad_mascota
                                };
               foreach (var item in linqLista)
                {
                    lista.Add(item);
                }

                return lista;
            }
        }


    }
}
