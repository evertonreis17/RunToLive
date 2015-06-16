using RunToLive.Infraestrutura.BaseDominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RunToLive.Dominio.Modelo.Professor
{
    public class Professor : Pessoa, IRaizAgregado
    {
        private string campoAtuacao;


        #region Construtores

        public Professor(string nome, Login login, char genero, string rg, string cpf)
            : this(null, nome, login, genero, rg, cpf)
        {
        }

        public Professor(string id, string nome, Login login, char genero, string rg, string cpf)
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
