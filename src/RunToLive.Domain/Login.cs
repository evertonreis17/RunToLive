using RunToLive.Infrastructure.DomainBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Domain
{
    public class Login : EntityBase
    {
        private string email;
        private string senha;
        private UserType userType;


        #region Contrutores

        public Login(object id) : base(id)
        {
        }

        public Login(string email, UserType tipoUsuario) 
            : this(null, email, tipoUsuario) 
        {
        
        }

        public Login(object id, string email, UserType tipoUsuario)
            : base(id)
        {
            this.email = email;
            this.userType = tipoUsuario;
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

        public UserType TipoUsuario
        {
            get { return this.userType; }
        } 

        #endregion
    }
}
