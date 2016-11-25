using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjetoIntegrador.Controllers
{
    public class UsuarioController : Controller
    {
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
            return View();
        }
    }
}
