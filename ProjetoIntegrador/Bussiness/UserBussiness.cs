using ProjetoIntegrador.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoIntegrador.Bussiness
{
    public class UserBussiness
    {
        private static projetointegradorContext dbcontext = new projetointegradorContext();

        public static string NameUser
        {
            get
            {
                string nome = dbcontext.usuarios.Where(x => x.EMAILUSUARIO == HttpContext.Current.User.Identity.Name).FirstOrDefault().NOMEUSUARIO;

                if (!string.IsNullOrEmpty(nome))
                {
                    return nome;
                }
                return "Erro";
            }
        }

        public static int IdUser
        {
            get {
                int idUser = dbcontext.usuarios.Where(x => x.EMAILUSUARIO == HttpContext.Current.User.Identity.Name).FirstOrDefault().IDUSUARIO;
                return idUser;
            }
        }

        public static Boolean UserFromSystem(string login, string pass)
        {
            var exist = dbcontext.usuarios.Where(x => x.EMAILUSUARIO == login && x.SENHAUSUARIO == pass && x.ATIVO == true).FirstOrDefault();
            if (exist != null)
            {
                return true;
            }
            return false;
        }
    }
}