﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjetoIntegrador.Models;

namespace ProjetoIntegrador.Bussiness
{
    public class FriendBussiness
    {
        private static projetointegradorContext dbcontext = new projetointegradorContext();

        public static Boolean IsFriend(int id)
        {
            var exist = dbcontext.amigoes.Where(x => x.IDUSUARIO1 == UserBussiness.IdUser && x.IDUSUARIO2 == id && x.ATIVO == true).FirstOrDefault();
            if (exist != null)
            {
                return true;
            }
            return false;
        }

        public static amigo ReturnFriendship(int id)
        {
            var amizade = dbcontext.amigoes.Where(x => x.IDUSUARIO1 == UserBussiness.IdUser && x.IDUSUARIO2 == id).FirstOrDefault();
            return amizade;
        }
    }
}