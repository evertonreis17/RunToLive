using RunToLive.Infraestrutura.BaseDominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RunToLive.Dominio
{
    public class Login : EntidadeBase
    {
        private string email;
        private string senha;
        private TipoUsuario tipoUsuario;


        #region Contrutores

        public Login(string email) : base(null)
        {
            this.email = email;
        }

        public Login(string email, TipoUsuario tipoUsuario) 
            : this(null, email, tipoUsuario) 
        {
        
        }

        public Login(object id, string email, TipoUsuario tipoUsuario)
            : base(id)
        {
            this.email = email;
            this.tipoUsuario = tipoUsuario;
        }
        
        #endregion


        #region Propriedades

        public string Email
        {
            get { return this.email; }
        }

        public string Senha
        {
            get { return this.senha; }
            set { this.senha = value; }
        }

        public TipoUsuario TipoUsuario
        {
            get { return this.tipoUsuario; }
        } 

        #endregion
    }
}
