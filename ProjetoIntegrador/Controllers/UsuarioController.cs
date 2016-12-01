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
		
		//
        // POST: /Usuario/CropImage
		[HttpPost]
        public virtual ActionResult CropImage(
            string imagePath,
            int? cropPointX,
            int? cropPointY,
            int? imageCropWidth,
            int? imageCropHeight)
        {
            if (string.IsNullOrEmpty(imagePath)
                || !cropPointX.HasValue
                || !cropPointY.HasValue
                || !imageCropWidth.HasValue
                || !imageCropHeight.HasValue)
            {
                return new HttpStatusCodeResult((int)HttpStatusCode.BadRequest);
            }

            byte[] imageBytes = System.IO.File.ReadAllBytes(Server.MapPath(imagePath));
            byte[] croppedImage = ImageHelper.CropImage(imageBytes, cropPointX.Value, cropPointY.Value, imageCropWidth.Value, imageCropHeight.Value);

            string tempFolderName = Server.MapPath("~/" + ConfigurationManager.AppSettings["Image.TempFolderName"]);
            string fileName = Path.GetFileName(imagePath);

            try
            {
                FileHelper.SaveFile(croppedImage, Path.Combine(tempFolderName, fileName));
            }
            catch (Exception ex)
            {
                //Log an error     
                return new HttpStatusCodeResult((int)HttpStatusCode.InternalServerError);
            }

            string photoPath = string.Concat("/", ConfigurationManager.AppSettings["Image.TempFolderName"], "/", fileName);
            return Json(new { photoPath = photoPath }, JsonRequestBehavior.AllowGet);
        }
    }
}
