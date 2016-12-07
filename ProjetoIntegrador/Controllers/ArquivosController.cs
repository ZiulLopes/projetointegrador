using ProjetoIntegrador.Bussiness;
using ProjetoIntegrador.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using PagedList;
using System.Configuration;

namespace ProjetoIntegrador.Controllers
{
    [Authorize]
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

        //
        // GET: /Arquivos/DeleteFile
        public ActionResult DeleteFile(int? id)
        {
            // Não vamos excluir o arquivo apenas inativalo
            var file = dbcontext.arquivoes.Find(id);
            file.ATIVO = false;
            dbcontext.SaveChanges();

            return RedirectToAction("Index", new { msg = "filerm" });
        }


        //
        // EDIT: /Arquivos/Edit
        [HttpPost]
        public void Edit(int id, string descricao)
        {
            try
            {
                var files = dbcontext.arquivoes.Find(id);
                files.DESCRICAO = descricao;
                dbcontext.SaveChanges();
            }
            catch (Exception error)
            {
                throw new Exception();
            }
        }


        //
        // GET: /Arquivos/Create
        [HttpPost]
        public void PostFile(arquivo arquivoContext)
        {
            HttpPostedFileBase file = Request.Files[0];

            if (file.ContentLength > 60000000)
            {
                //return RedirectToAction("ArquivoInfo", new { msg = "Arquivo maior que 50 mb" });
                throw new Exception();
            }
            else
            {
                try
                {
                    Random rnd = new Random();
                    int hash = rnd.Next(1, 99999999);

                    string filepath = string.Concat("/", ConfigurationManager.AppSettings["File.FolderName"], "/" + hash + "_", file.FileName);
                    file.SaveAs(Server.MapPath(filepath));

                    arquivoContext.PATHARQUIVO = filepath;
                    arquivoContext.ATIVO = true;
                    arquivoContext.NOMEARQUIVO = file.FileName;
                    arquivoContext.IDUSUARIO = UserBussiness.IdUser;
                    arquivoContext.DATAENVIOARQUIVO = DateTime.Now;
                    dbcontext.arquivoes.Add(arquivoContext);
                    dbcontext.SaveChanges();
                }
                catch (Exception error)
                {
                    throw new Exception();
                    error.Message.ToString();
                }
            }
        }
    }
}
