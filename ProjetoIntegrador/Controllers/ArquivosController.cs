using ProjetoIntegrador.Bussiness;
using ProjetoIntegrador.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using PagedList;

namespace ProjetoIntegrador.Controllers
{
    public class ArquivosController : Controller
    {
        projetointegradorContext dbcontext = new projetointegradorContext();

        //
        // GET: /Arquivos/Index
        public ActionResult Index(int? page)
        {
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            
            var files = dbcontext.arquivoes.Where(x => x.IDUSUARIO == UserBussiness.IdUser && x.ATIVO == true).ToList();

            return View(files.ToPagedList(pageNumber, pageSize));
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
