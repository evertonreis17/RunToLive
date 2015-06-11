using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RunToLive.Dominio.Modelo.Professor
{
    public class Professor : Pessoa
    {
        private string campoAtuacao;


        #region Construtores

        public Professor(string nome, Login login, Genero genero, string dataNascimento, string rg, string cpf)
            : this(null, nome, login, genero, dataNascimento, rg, cpf)
        {
        }

        public Professor(string id, string nome, Login login, Genero genero, string dataNascimento, string rg, string cpf)
            : base(null, nome, login, genero, dataNascimento, rg, cpf)
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
