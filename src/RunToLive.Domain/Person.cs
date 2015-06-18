using RunToLive.Domain;
using RunToLive.Infrastructure.DomainBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Domain
{
    public class Person : EntityBase
    {
        private string nome;
        private char genero;
        private DateTime dataNascimento;
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

        public Person(object id, string nome, Login login, char genero, string rg, string cpf)
            : base(id)
        {
            this.nome = nome;
            this.login = login;
            this.genero = genero;
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

        public char Genero
        {
            get { return genero; }
        }

        public DateTime DataNascimento
        {
            get { return dataNascimento; }
            set { dataNascimento = value; }
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
            get { return nacionalidade; }
            set { nacionalidade = value; }
        }

        public string Foto
        {
            get { return foto; }
            set { foto = value; }
        }

        #endregion
    }
}
