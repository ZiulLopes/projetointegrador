using ProjetoIntegrador.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjetoIntegrador.Controllers
{
    public class ArquivosController : Controller
    {
        projetointegradorContext dbcontext = new projetointegradorContext();

        //
        // GET: /Arquivos/Index
        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Arquivos/ArquivoInfo
        public ActionResult ArquivoInfo(int? id)
        {
            var file = dbcontext.arquivoes.Where(x => x.IDARQUIVO == id && x.ATIVO == true).FirstOrDefault();
            return View(file);
        }
    }
}
