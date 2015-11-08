using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;
using CapaEntidades;
namespace CapaNegocio
{
    public class NegocioAdministrador
    {
        static AccesoAdministrador acceso = new AccesoAdministrador();

        public static Administrador Login(String usuario, String password)
        {
            Administrador adLogin;
            if (!RecuperarEstadoLogeo(usuario,password,out adLogin))
                throw new Exception("Nombre de usuario y password no coinciden o no existen");
            else
                return adLogin;
        }

        private static Boolean RecuperarEstadoLogeo(String usuario, String password, out Administrador usrLogin)
        {
            bool validacion;
            usrLogin = acceso.obtenerEstado(usuario, password);
            if (usrLogin != null)
            {
                validacion = usrLogin.pass_administrador.Equals(password);
            }
            else
            {
                validacion = false;
            }
            return validacion;
        }

        public static Boolean accederEliminacionUsuario(int id)
        {
            return acceso.eliminarUsuario(id);
        }

        public static Boolean accederEliminacionPublicacion(int idP)
        {
            return acceso.eliminarPublicacion(idP);
        }
    }
}
