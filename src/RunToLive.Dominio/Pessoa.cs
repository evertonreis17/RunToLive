using RunToLive.Infraestrutura.BaseDominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RunToLive.Dominio
{
    public class Pessoa : EntidadeBase
    {
        private string nome;
        private Genero genero;
        private string dataNascimento;
        private string rg;
        private string cpf;
        private Login login;
        private string telefone;
        private string celular;
        private string cep;
        private string naturalidade;
        private string nacionalidade;
        private string foto;


        #region Contrutores

        public Pessoa(object id, string nome, Login login, Genero genero, string dataNascimento, string rg, string cpf)
            : base(id)
        {
            this.nome = nome;
            this.login = login;
            this.genero = genero;
            this.dataNascimento = dataNascimento;
            this.rg = rg;
            this.cpf = cpf;
        }
        
        #endregion


        #region Propriedades

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }

        public Genero Genero
        {
            get { return genero; }
        }

        public string DataNascimento
        {
            get { return dataNascimento; }
        }

        public string Rg
        {
            get { return rg; }
        }

        public string Cpf
        {
            get { return cpf; }
        }

        public Login Login
        {
            get { return login; }
        }

        public string Telefone
        {
            get { return telefone; }
            set { telefone = value; }
        }

        public string Celular
        {
            get { return celular; }
            set { celular = value; }
        }
        public string Cep
        {
            get { return cep; }
            set { cep = value; }
        }
        public string Naturalidade
        {
            get { return naturalidade; }
            set { naturalidade = value; }
        }

        public string Nacionalidade
        {
            get { return Nacionalidade; }
            set { Nacionalidade = value; }
        }

        public string Foto
        {
            get { return foto; }
            set { foto = value; }
        }

        #endregion
    }
}
