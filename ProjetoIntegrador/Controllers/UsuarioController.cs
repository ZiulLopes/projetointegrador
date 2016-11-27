using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using ProjetoIntegrador.Models;
using ProjetoIntegrador.Bussiness;

namespace ProjetoIntegrador.Controllers
{

    public class UsuarioController : Controller
    {
        projetointegradorContext dbcontext = new projetointegradorContext();

        //
        // GET: /Usuario/Index
        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Usuario/Perfil
        public ActionResult Perfil()
        {
            var user = dbcontext.usuarios.Find(UserBussiness.IdUser);
            return View(user);
        }

        //
        // POST: /Usuario/Perfil
        [HttpPost]
        public ActionResult Perfil(usuario user)
        {
            try
            {
                var userContext = dbcontext.usuarios.Find(user.IDUSUARIO);

                userContext.NOMEUSUARIO = user.NOMEUSUARIO;
                userContext.SENHAUSUARIO = user.SENHAUSUARIO;
                userContext.EMAILUSUARIO = user.EMAILUSUARIO;
                //userContext.PATHIMAGEM = user.PATHIMAGEM;
                userContext.OBJETIVO = user.OBJETIVO;
                userContext.PERFIL = user.PERFIL;
                userContext.SOBREMIM = user.SOBREMIM;
                userContext.TELEFONEUSUARIO = user.TELEFONEUSUARIO;
                userContext.SEXOUSUARIO = user.SEXOUSUARIO;
                
                dbcontext.SaveChanges();
            }
            catch (Exception erro)
            {
                erro.Message.ToString();
            }
            return View(user);
        }
    }
}
