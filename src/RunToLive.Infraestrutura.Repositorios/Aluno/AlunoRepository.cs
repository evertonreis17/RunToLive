using RunToLive.Dominio.Modelo.Aluno;
using M = RunToLive.Dominio.Modelo.Aluno;
using RunToLive.Infraestrutura.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RunToLive.Infraestrutura.Repositorios.Aluno
{
    public class AlunoRepository : SqlRepositoryBase<M.Aluno>, IRepositorioAluno
    {
        #region Nome das Procedures

        internal static class ProcedureNames
        {
            public const string BuscarPorID = "";
            public const string BuscarPorLogin = "";
            public const string BuscarTodos = "";
            public const string AdicionarAluno = "";
            public const string RemoverAluno = "";
        }

        #endregion


        #region Membros IRepositorioAluno



        #endregion

        #region Membros SqlRepositoryBase

        public override void Add(M.Aluno item)
        {
            ExecuteNonQuery(ProcedureNames.AdicionarAluno, GetStoreParameters(item));
        }

        public override void Remover(object id)
        {
            ExecuteNonQuery(ProcedureNames.RemoverAluno, GetIDParameter(id));
        }

        public M.Aluno BuscarPorLogin(string login)
        {
            List<DbParameter> parameters = new List<DbParameter>();

            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.Login, SqlDbType = SqlDbType.VarChar, Size = 0, Value = login });

            return BuildEntityFromSql(ProcedureNames.BuscarPorLogin, parameters);
        }

        #endregion


        #region Metodos Auxiliares

        protected override DbParameter GetIDParameter(object id)
        {
            return new SqlParameter() { ParameterName = AlunoFactory.Campos.AlunoID, SqlDbType = SqlDbType.UniqueIdentifier, Size = 0, Value = id };
        }

        protected override IList<DbParameter> GetStoreParameters(M.Aluno item)
        {
            List<DbParameter> parameters = new List<DbParameter>();

            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.AlunoID, SqlDbType = SqlDbType.UniqueIdentifier, Size = 0, Value = item.ID });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.Nome, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Nome });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.Sexo, SqlDbType = SqlDbType.Char, Size = 0, Value = item.Genero });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.DtNascimento, SqlDbType = SqlDbType.Date, Size = 0, Value = item.DataNascimento });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.RG, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Rg });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.CPF, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Cpf });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.Login, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Login.Email });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.Telefone, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Telefone });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.Celular, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Celular });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.Cep, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Cep });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.Naturalidade, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Naturalidade });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.Nacionalidade, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Nacionalidade });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.Profissao, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Profissao });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.Foto, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Foto });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.Campos.ExameMedico, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.ExameMedico });

            return parameters;
        }

        protected override string GetFindByProcedureName()
        {
            return ProcedureNames.BuscarPorID;
        }

        protected override string GetFindAllProcedureName()
        {
            return ProcedureNames.BuscarTodos;
        }

        #endregion
    }
}
