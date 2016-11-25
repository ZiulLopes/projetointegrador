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

            var amigos = new[] {
                new Amigos { QuestionId = 1, QuestionName = "Question 1" },
                new Amigos { QuestionId = 1, QuestionName = "Question 2" },
                new Amigos { QuestionId = 1, QuestionName = "Question 3" },
                new Amigos { QuestionId = 1, QuestionName = "Question 3" },
                new Amigos { QuestionId = 1, QuestionName = "Question 3" },
                new Amigos { QuestionId = 1, QuestionName = "Question 3" },
                new Amigos { QuestionId = 1, QuestionName = "Question 3" },
                new Amigos { QuestionId = 1, QuestionName = "Question 3" },
                new Amigos { QuestionId = 1, QuestionName = "Question 3" },
                new Amigos { QuestionId = 1, QuestionName = "Question 3" },
                new Amigos { QuestionId = 1, QuestionName = "Question 3" },
                new Amigos { QuestionId = 1, QuestionName = "Question 3" },
                new Amigos { QuestionId = 1, QuestionName = "Question 4" }
            };

            var myamigos = dbcontext.amigoes.Where(x => x.IDUSUARIO1 == UserBussiness.IdUser).ToList();

            return View(myamigos.ToPagedList(pageNumber, pageSize));
        }

        //
        // POST: /Amigos/ListAmigos
        public ActionResult ListAmigos(string searching, int? page)
        {
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            var listusers = dbcontext.usuarios.Where(x => x.ATIVO == true).ToList();
            return View(listusers.ToPagedList(pageNumber, pageSize));
        }

        //
        // GET: /Amigos/AmigoInfo
        public ActionResult AmigoInfo(int? id)
        {
            return View();
        }

        //
        // GET: /Amigos/AmigoInfo
        public ActionResult SearchAmigos(int? id)
        {
            return View();
        }
    }
}
