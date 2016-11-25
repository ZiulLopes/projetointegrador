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
        public ActionResult Index(int? page)
        {

            int pageSize = 3;
            int pageNumber = (page ?? 1);

            var files = dbcontext.arquivoes.Where(x => x.usuario.amigoes1.FirstOrDefault().IDUSUARIO1 == UserBussiness.IdUser).ToList();

            return View(files.ToPagedList(pageNumber, pageSize));
            return View();
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
                return RedirectToAction("Login");
            }
        }

        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login");
        }
    }
}
