using ActionTest.BLL;
using ActionTest.Model.Classes;
using ActionTest.Model.Database;
using System;
using System.Collections.Generic;
using System.Web.Mvc;
using System.Web.Script.Serialization;

namespace ActionTest.Web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult LoadingPartial()
        {
            return PartialView("../Shared/_LoadingPartial");
        }
        public ActionResult Load_List()
        {
            List<Contato> ListaContatos = ContatoBLL.GetAll();
            return PartialView("_List", ListaContatos);
        }
        public JsonResult Create_CS(string strContato)
        {
            Contato ContatoTemp;
            QGErro oErro = new QGErro();
            var jsRetorno = new JavaScriptSerializer();
            try
            {
                ContatoTemp = jsRetorno.Deserialize<Contato>(strContato);

                ContatoBLL.Salvar(ContatoTemp, ref oErro);
                if (oErro.IdErro != 0)
                    return Json(new { IdErro = "1", Msg = oErro.txtErro.Trim() }, JsonRequestBehavior.AllowGet);

                return Json(new { IdErro = 0, Msg = "" }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { IdErro = "1", Msg = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult Excluir_CS(int id)
        {
            QGErro oErro = new QGErro();

            ContatoBLL.Excluir(id, ref oErro);
            if (oErro.IdErro != 0)
                return Json(new { IdErro = "1", Msg = oErro.txtErro.Trim() }, JsonRequestBehavior.AllowGet);

            return Json(new { IdErro = "0", Msg = "" }, JsonRequestBehavior.AllowGet);
        }
    }
}