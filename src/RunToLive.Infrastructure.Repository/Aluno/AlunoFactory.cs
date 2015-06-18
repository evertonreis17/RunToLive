using RunToLive.Domain;
using RunToLive.Domain.Model;
using RunToLive.Infrastructure.EntityFactoryFramework;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;


namespace RunToLive.Infrastructure.Repositories
{
    internal class AlunoFactory : IEntityFactory<Aluno>
    {
        #region Nome das Colunas/Propriedades

        internal class FieldNames
        {
            public const string AlunoID = "UsuarioID";
            public const string Nome = "Nome";
            public const string Sexo = "Sexo";
            public const string DataNascimento = "Nascimento";
            public const string RG = "RG";
            public const string CPF = "CPF";
            public const string LoginID = "LoginID";
            public const string Telefone = "Telefone";
            public const string Celular = "Celular";
            public const string Cep = "Cep";
            public const string Naturalidade = "Naturalidade";
            public const string Nacionalidade = "Nacionalidade";
            public const string Profissao = "Profissao";
            public const string Foto = "Foto";
            public const string ExameMedico = "ExameMedico";
        }

        #endregion


        public Aluno BuildEntity(IDataReader reader)
        {
            Aluno aluno = new Aluno(reader[FieldNames.AlunoID], reader[FieldNames.Nome].ToString(), new Login(reader[FieldNames.LoginID].ToString()), Convert.ToChar(reader[FieldNames.Sexo]), reader[FieldNames.RG].ToString(), reader[FieldNames.CPF].ToString());

            aluno.Celular = reader[FieldNames.Celular].ToString();
            aluno.Telefone = reader[FieldNames.Telefone].ToString();
            aluno.Cep = reader[FieldNames.Cep].ToString();
            aluno.Nacionalidade = reader[FieldNames.Nacionalidade].ToString();
            aluno.Naturalidade = reader[FieldNames.Naturalidade].ToString();
            aluno.DataNascimento = DateTime.Parse(reader[FieldNames.DataNascimento].ToString(), new CultureInfo("pt-BR"));
            aluno.Profissao = reader[FieldNames.Profissao].ToString();
            aluno.Foto = reader[FieldNames.Foto].ToString();
            aluno.ExameMedico = reader[FieldNames.ExameMedico].ToString();

            return aluno;
        }
    }
}
