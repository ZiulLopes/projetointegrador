using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjetoIntegrador.Controllers
{
    public class ArquivosController : Controller
    {
        //
        // GET: /Arquivos/Index
        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Arquivos/ArquivoInfo
        public ActionResult ArquivoInfo()
        {
            return View();
        }
    }
}
