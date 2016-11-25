using ProjetoIntegrador.Bussiness;
using ProjetoIntegrador.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace ProjetoIntegrador.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/Index
        public ActionResult Index()
        {
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
