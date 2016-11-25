using ProjetoIntegrador.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoIntegrador.Bussiness
{

    public class FileBussiness
    {
        private static projetointegradorContext dbcontext = new projetointegradorContext();

        public static string NameFile
        {
            get
            {
                return "Default";
            }
        }
    }
}