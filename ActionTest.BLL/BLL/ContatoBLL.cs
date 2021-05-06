using ActionTest.DAO;
using ActionTest.Model.Classes;
using ActionTest.Model.Database;
using System.Collections.Generic;

namespace ActionTest.BLL
{
    public class ContatoBLL
    {
        public static void Salvar(Contato model, ref QGErro oErro)
        {
            ContatoDAO.Salvar(model, ref oErro);
        }
        public static void Excluir(int Id, ref QGErro oErro)
        {
            ContatoDAO.Excluir(Id, ref oErro);
        }
        public static List<Contato> GetAll()
        {
            return ContatoDAO.GetAll();
        }
        public static Contato GetById(int Id)
        {
            return ContatoDAO.GetById(Id);
        }
    }
}
