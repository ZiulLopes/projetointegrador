using ProjetoIntegrador.Bussiness;
using ProjetoIntegrador.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

using PagedList;

namespace ProjetoIntegrador.Controllers
{
    public class HomeController : Controller
    {
        projetointegradorContext dbcontext = new projetointegradorContext();

        //
        // GET: /Home/Index
        [Authorize]
        public ActionResult Index(int? page)
        {

            int pageSize = 999;
            int pageNumber = (page ?? 1);

            var users = dbcontext.amigoes.Where(x => x.usuario.IDUSUARIO == UserBussiness.IdUser && x.ATIVO == true).Select(x => x.IDUSUARIO2).ToList();

            int[] ids = users.ToArray();

            var files = dbcontext.arquivoes.Where(x => ids.Contains((int)x.IDUSUARIO)).OrderByDescending(x => x.DATAENVIOARQUIVO).ToList();

            return View(files.ToPagedList(pageNumber, pageSize));
        }

        //
        // GET: /Home/Login
        public ActionResult Login()
        {
            return View();
        }

        //
        // POST: /Home/Login
        [HttpPost]
        public ActionResult Login(Login login)
        {
            if(UserBussiness.UserFromSystem(login.UserLogin, login.UserPass))
            {
                FormsAuthentication.SetAuthCookie(login.UserLogin, false);
                return RedirectToAction("Index");
            }
            else
            {
                return RedirectToAction("Login", new { msg="loginerro" });
            }
        }

        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login");
        }

        //
        // POST: /HOME/Create
        [HttpPost]
        public ActionResult Create(usuario user)
        {
            try
            {
                user.ATIVO = true;
                user.DATACADASTRO = DateTime.Now;
                dbcontext.usuarios.Add(user);
                dbcontext.SaveChanges();
                FormsAuthentication.SetAuthCookie(user.EMAILUSUARIO, false);
                return RedirectToAction("Index");
            }
            catch (Exception error)
            {
                error.Message.ToString();
                return RedirectToAction("Login");
            }
        }
    }
}
