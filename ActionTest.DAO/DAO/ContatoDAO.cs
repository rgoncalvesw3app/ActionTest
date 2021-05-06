using ActionTest.Model.Classes;
using ActionTest.Model.Database;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ActionTest.DAO
{
    public class ContatoDAO : BaseDAO
    {
        public static void Salvar(Contato model, ref QGErro oErro)
        {
            try
            {
                using (db = new ActionEntities())
                {
                    if (model.Id == 0)
                    {
                        db.Contatoes.Add(model);
                    }
                    else
                    {
                        db.Entry(model).State = System.Data.Entity.EntityState.Modified;
                    }
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                oErro.IdErro = 1;
                oErro.txtErro = "Ocorreu um erro ao salvar o registro de contato: " + ex.Message;
            }
        }
        public static void Excluir(int Id, ref QGErro oErro)
        {
            try
            {
                using (db = new ActionEntities())
                {
                    Contato model = db.Contatoes.Where(c => c.Id == Id).FirstOrDefault();

                    if (model != null)
                    {
                        db.Contatoes.Remove(model);
                        db.SaveChanges();
                    }
                }
            }
            catch (Exception ex)
            {
                oErro.IdErro = 1;
                oErro.txtErro = "Ocorreu um erro ao excluir o registro de contato: " + ex.Message;
            }
        }
        public static List<Contato> GetAll()
        {
            List<Contato> ListaContatos = new List<Contato>();
            using (db = new ActionEntities())
            {
                var query = from p in db.Contatoes
                            select p;
                ListaContatos = query.ToList();
            }

            return ListaContatos;
        }
        public static Contato GetById(int Id)
        {
            Contato model = new Contato();
            using (db = new ActionEntities())
            {
                var query = from p in db.Contatoes
                            where (p.Id == Id)
                            select p;
                model = query.FirstOrDefault();

            }
            return model;
        }
    }
}
