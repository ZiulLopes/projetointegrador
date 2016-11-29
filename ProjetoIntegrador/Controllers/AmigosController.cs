using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using PagedList;
using ProjetoIntegrador.Models;
using System.Data.Entity;
using ProjetoIntegrador.Bussiness;

namespace ProjetoIntegrador.Controllers
{
    public class AmigosController : Controller
    {
        // Context for base test
        projetointegradorContext dbcontext = new projetointegradorContext();

        //
        // GET: /Amigos/Index
        public ActionResult Index(int? page)
        {
            int pageSize = 3;
            int pageNumber = (page ?? 1);

            var myamigos = dbcontext.amigoes.Where(x => x.IDUSUARIO1 == UserBussiness.IdUser).ToList();

            return View(myamigos.ToPagedList(pageNumber, pageSize));
        }

        //
        // POST: /Amigos/ListAmigos
        public ActionResult ListAmigos(string searching, int? page)
        {
            int pageSize = 15;
            int pageNumber = (page ?? 1);
            var listusers = dbcontext.usuarios.Where(x => x.IDUSUARIO != UserBussiness.IdUser && x.ATIVO == true).ToList();
            return View(listusers.ToPagedList(pageNumber, pageSize));
        }

        //
        // GET: /Amigos/AmigoInfo
        public ActionResult AmigoInfo(int? id)
        {
            var amigo = dbcontext.usuarios.Find(id);
            return View(amigo);
        }

        //
        // GET: /Amigos/AmigoInfo
        public ActionResult SearchAmigos(int? id)
        {
            return View();
        }

        #region Methods

        //
        // POST: /Amigos/AdcionarAmizade
        public void AdcionarAmizade(int id)
        {
            try
            {
                amigo amizade = new amigo();
                amizade.IDUSUARIO1 = UserBussiness.IdUser;
                amizade.IDUSUARIO2 = id;
                amizade.ATIVO = true;
                dbcontext.amigoes.Add(amizade);
                dbcontext.SaveChanges();
            }
            catch (Exception error)
            {
                throw new Exception();
            }
        }

        //
        // POST: /Amigos/ExcluirAmizade
        public void ExcluirAmizade(int id)
        {
            try
            {
                var amigo = dbcontext.amigoes.Where(x => x.IDUSUARIO1 == UserBussiness.IdUser && x.IDUSUARIO2 == id).FirstOrDefault();
                if (amigo != null)
                {
                    amigo.ATIVO = false;
                    dbcontext.SaveChanges();
                }
            }
            catch (Exception error)
            {
                throw new Exception();
            }
        }

        #endregion
    }
}
