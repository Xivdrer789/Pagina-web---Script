using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
/*Referenciar Entidad y Object*/
using CapaEntidades;
using System.Data.Objects;


namespace CapaDatos
{
    public class AccesoUsuarios
    {
        EF_Pagina contexto;

        #region Agregar usuario
        /*Verificar que no se repita un correo electronico y un nombre de usuario*/
        public Boolean agregarUsuario(Usuario user)
        {
            using (contexto = new EF_Pagina())
            {
                ObjectSet<Usuario> usuarios = contexto.Usuario;
                var verificacionUsuario = from x in usuarios
                                          where x.correo_usuario.Equals
                                          (user.correo_usuario) &&
                                          x.login_usuario.Equals
                                          (user.login_usuario)
                                          select x;
                if (verificacionUsuario == null)
                {
                    usuarios.AddObject(user);
                    contexto.SaveChanges();
                    return true;
                }
            }
            return false;
        }
        #endregion

        #region Iniciar sesion
        /*recuperaremos los datos del usuario al momento de iniciar sesion*/
        public Usuario recuperarUser(string userNombre, string password)
        {
            using (contexto = new EF_Pagina())
            {

                ObjectQuery<Usuario> user = contexto.Usuario;
                var recuperarEstadoDeLogueo = from x in user
                                              where x.login_usuario.Equals(userNombre) && x.password_usuario.Equals(password)
                                              select x;
                if (recuperarEstadoDeLogueo != null)
                {
                    foreach (var item in recuperarEstadoDeLogueo)
                    {
                        return new Usuario
                        {
                            nombre_usuario = item.nombre_usuario,
                            apellido_usuario = item.apellido_usuario,
                            correo_usuario = item.correo_usuario,
                            id_usuario = item.id_usuario,
                            edad_usuario = item.edad_usuario,
                            login_usuario = item.login_usuario,
                            password_usuario = item.password_usuario,
                            Administrador_id = item.Administrador_id
                        };
                    }
                }
                return null;
            }
        }
        #endregion

        #region Eliminar usuario
        /*Eliminar un usuario por su ID*/
        public Boolean eliminarUsuario(int id)
        {
            using (contexto = new EF_Pagina())
            {
                ObjectSet<Usuario> usuarios = contexto.Usuario;
                #region PrimeraOpcionDeProgramacion
                //Usuario usuarioEliminar = (from x in contexto.Usuario.Where(a => a.id_usuario == id)
                //                           select x).First();
                //usuarios.DeleteObject(usuarioEliminar);
                //contexto.SaveChanges();
                #endregion
                #region SegundaOpcionDeProgramacion
                var eliminarUsuario = from x in usuarios
                                      where x.id_usuario.Equals(id)
                                      select x;
                foreach (var item in eliminarUsuario)
                {
                    usuarios.DeleteObject(item);
                }
                contexto.SaveChanges();
                #endregion
            }
            return false;
        }
        #endregion

        #region Listar usuarios
        public List<Usuario> listarUsuarios()
        {
            using (contexto = new EF_Pagina())
            {
                return contexto.Usuario.ToList();
            }
        }
        #endregion

        #region Listar publicaciones
        public List<Object> listarPublicacionesDeUsuario(int id)
        {
            List<Object> lista = new List<object>();
            using (contexto = new EF_Pagina())
            {
                ObjectQuery<Mascota> pet = contexto.Mascota;
                ObjectQuery<Publicacion> pub = contexto.Publicacion;
                var linqLista = from m in pet
                                join p in pub on m.Publicacion_id equals p.id_publicacion
                                where p.Usuario_id==id
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
        #endregion
        public Boolean ingresarPublicacion(Publicacion pub, Mascota m)
        {
            using (contexto = new EF_Pagina())
            {
                ObjectSet<Publicacion> publicacion = contexto.Publicacion;
                ObjectSet<Mascota> mascota = contexto.Mascota;
                publicacion.AddObject(pub);
                mascota.AddObject(m);
                contexto.SaveChanges();
                return true;
            }
        }

        
    }
}