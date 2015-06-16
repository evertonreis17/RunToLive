using RunToLive.Dominio;
using RunToLive.Infraestrutura.EntityFactoryFramework;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using A = RunToLive.Dominio.Modelo.Aluno;

namespace RunToLive.Infraestrutura.Repositorios.Aluno
{
    internal class AlunoFactory : IEntityFactory<A.Aluno>
    {
        #region Nome das Colunas/Propriedades

        internal class Campos
        {
            public const string AlunoID = "UsuarioID";
            public const string Nome = "Nome";
            public const string Sexo = "Sexo";
            public const string DtNascimento = "Nascimento";
            public const string RG = "RG";
            public const string CPF = "CPF";
            public const string Login = "Login";
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


        public A.Aluno BuildEntity(IDataReader reader)
        {
            Login login = new Login(reader[Campos.Login].ToString());

            A.Aluno aluno = new A.Aluno(reader[Campos.AlunoID], reader[Campos.Nome].ToString(), login, Convert.ToChar(reader[Campos.Sexo]), reader[Campos.RG].ToString(), reader[Campos.CPF].ToString());

            aluno.Celular = reader[Campos.Celular].ToString();
            aluno.Telefone = reader[Campos.Telefone].ToString();
            aluno.Cep = reader[Campos.Cep].ToString();
            aluno.Nacionalidade = reader[Campos.Nacionalidade].ToString();
            aluno.Naturalidade = reader[Campos.Naturalidade].ToString();
            aluno.DataNascimento = DateTime.Parse(reader[Campos.DtNascimento].ToString(), new CultureInfo("pt-BR"));
            aluno.Profissao = reader[Campos.Profissao].ToString();
            aluno.Foto = reader[Campos.Foto].ToString();
            aluno.ExameMedico = reader[Campos.ExameMedico].ToString();

            return aluno;
        }
    }
}
