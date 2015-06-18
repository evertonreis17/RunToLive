using RunToLive.Infrastructure.DomainBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Domain.Model
{
    [Serializable]
    public class Professor : Person, IAggregateRoot
    {
        private string campoAtuacao;


        #region Construtores

        public Professor(string nome, Login login, char genero, string rg, string cpf)
            : this(null, nome, login, genero, rg, cpf)
        {
        }

        public Professor(object id, string nome, Login login, char genero, string rg, string cpf)
            : base(id, nome, login, genero, rg, cpf)
        {
        }

        #endregion


        #region Propriedades

        public string CampoAtuacao
        {
            get { return campoAtuacao; }
            set { campoAtuacao = value; }
        }

        #endregion
    }
}
