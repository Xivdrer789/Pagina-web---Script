using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocio
{
    public class NegocioUsuarios
    {
        static AccesoUsuarios acceso = new AccesoUsuarios();

        #region Comprobar registro
        public static Boolean comprobacionGuardado(Usuario user)
        {
            if (!acceso.agregarUsuario(user))
            {
                throw new Exception("El nombre de usuario o el mail ya esta siendo usado");
            }

            return true;
        }
        #endregion

        #region Verificar Inicio sesion
        public static Usuario Login(String usuario, String password)
        {
            Usuario usrLogin;
            if (!RecuperarEstadoLogeo(usuario, password, out usrLogin))
                throw new Exception("Nombre de usuario y password no coinciden o no existen");
            else
                return usrLogin;
        }
        #endregion

        #region Recuperar datos del usuario
        private static Boolean RecuperarEstadoLogeo(String usuario, String password, out Usuario usrLogin)
        {
            bool validacion;
            usrLogin = acceso.recuperarUser(usuario, password);
            if (usrLogin != null)
            {
                validacion = usrLogin.password_usuario.Equals(password);
            }
            else
            {
                validacion = false;
            }
            return validacion;
        }
        #endregion

        #region Listar todo
        public static List<Usuario> tenerUsuarios()
        {
            return acceso.listarUsuarios();
        }
        #endregion

        public static List<Object> obtenerPublicacionesUsuario(int id)
        {
            return acceso.listarPublicacionesDeUsuario(id);
        }

        public static Boolean accederIngresoPublicacion(Publicacion pub, Mascota m)
        {
            return acceso.ingresarPublicacion(pub,m);
        }
    }
}
