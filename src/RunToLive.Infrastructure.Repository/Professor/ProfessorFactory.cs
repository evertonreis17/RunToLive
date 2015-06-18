using RunToLive.Domain;
using RunToLive.Domain.Model;
using RunToLive.Infrastructure.EntityFactoryFramework;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.Repositories
{
    public class ProfessorFactory : IEntityFactory<Professor>
    {
        #region Nome das Colunas/Propriedades

        internal class FieldNames
        {
            public const string ProfessorID = "UsuarioID";
            public const string Nome = "Nome";
            public const string Sexo = "Sexo";
            public const string DataNascimento = "Nascimento";
            public const string CampoAtuacao = "CampoAtuacao";
            public const string RG = "RG";
            public const string CPF = "CPF";
            public const string LoginID = "LoginID";
            public const string Telefone = "Telefone";
            public const string Celular = "Celular";
            public const string Cep = "Cep";
            public const string Naturalidade = "Naturalidade";
            public const string Nacionalidade = "Nacionalidade";
            public const string Foto = "Foto";
        }

        #endregion


        public Professor BuildEntity(IDataReader reader)
        {
            Professor professor = new Professor(reader[FieldNames.ProfessorID], reader[FieldNames.Nome].ToString(), new Login(reader[FieldNames.LoginID]), Convert.ToChar(reader[FieldNames.Sexo]), reader[FieldNames.RG].ToString(), reader[FieldNames.CPF].ToString());

            return professor;
        }   // public Professor(string id, string nome, Login login, char genero, string rg, string cpf)
    }
}
