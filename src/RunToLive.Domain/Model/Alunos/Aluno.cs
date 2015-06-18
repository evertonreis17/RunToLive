using RunToLive.Infrastructure.DomainBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Domain.Model
{
    [Serializable]
    public class Aluno : Person, IAggregateRoot
    {
        private string profissao;
        private string exameMedico;


        #region Construtores

        public Aluno(string nome, Login login, char genero, string dataNascimento, string rg, string cpf)
            : this(null, nome, login, genero, rg, cpf)
        {
        }

        public Aluno(object id, string nome, Login login, char genero, string rg, string cpf)
            : base(id, nome, login, genero, rg, cpf)
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
