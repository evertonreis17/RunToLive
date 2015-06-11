using RunToLive.Infraestrutura.BaseDominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RunToLive.Dominio.Modelo.Usuarios
{
    public class Aluno : Pessoa
    {
        private string profissao;
        private string exameMedico;


        #region Construtores

        public Aluno(string nome, Login login, Genero genero, string dataNascimento, string rg, string cpf)
            : this(null, nome, login, genero, dataNascimento, rg, cpf)
        {
        }

        public Aluno(string id, string nome, Login login, Genero genero, string dataNascimento, string rg, string cpf)
            : base(null, nome, login, genero, dataNascimento, rg, cpf)
        {
        }

        #endregion


        #region Propriedades

        public string Profissao
        {
            get { return profissao; }
            set { profissao = value; }
        }

        public string ExameMedico
        {
            get { return exameMedico; }
            set { exameMedico = value; }
        }

        #endregion
    }
}
