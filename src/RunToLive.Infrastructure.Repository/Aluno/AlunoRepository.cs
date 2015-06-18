using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using RunToLive.Domain.Model;

namespace RunToLive.Infrastructure.Repositories
{
    public class AlunoRepository : SqlRepositoryBase<Aluno>, IAlunoRepository
    {
        #region Nome das Procedures

        
        internal static class ProcedureNames
        {
            public const string FindByID = "pr_retornaUsuarioPeloID";
            public const string FindByEmail = "pr_retornaUsuarioPeloEmail";
            public const string FindAll = "pr_retornaTodosUsuarios";
            public const string SaveAluno = "pr_salvaAluno";
            public const string RemoveAluno = "pr_removeUsuario";
        }

        #endregion


        #region IAlunoRepository Members



        #endregion

        #region SqlRepositoryBase Members

        public override void Add(Aluno item)
        {
            ExecuteNonQuery(ProcedureNames.SaveAluno, GetStoreParameters(item));
        }

        public override void Remover(object id)
        {
            List<DbParameter> parameters = new List<DbParameter>();

            parameters.Add(GetIDParameter(id));

            ExecuteNonQuery(ProcedureNames.RemoveAluno, parameters);
        }

        public Aluno BuscarPorLogin(string login)
        {
            List<DbParameter> parameters = new List<DbParameter>();

            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.LoginID, SqlDbType = SqlDbType.VarChar, Size = 0, Value = login });

            return BuildEntityFromSql(ProcedureNames.FindByEmail, parameters);
        }

        #endregion


        #region Metodos Auxiliares

        protected override DbParameter GetIDParameter(object id)
        {
            return new SqlParameter() { ParameterName = AlunoFactory.FieldNames.AlunoID, SqlDbType = SqlDbType.UniqueIdentifier, Size = 0, Value = id };
        }

        protected override IList<DbParameter> GetStoreParameters(Aluno item)
        {
            List<DbParameter> parameters = new List<DbParameter>();

            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.AlunoID, SqlDbType = SqlDbType.UniqueIdentifier, Size = 0, Value = item.ID });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.Nome, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Nome });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.Sexo, SqlDbType = SqlDbType.Char, Size = 0, Value = item.Genero });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.DataNascimento, SqlDbType = SqlDbType.Date, Size = 0, Value = item.DataNascimento });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.RG, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Rg });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.CPF, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Cpf });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.LoginID, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Login.ID });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.Telefone, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Telefone });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.Celular, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Celular });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.Cep, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Cep });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.Naturalidade, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Naturalidade });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.Nacionalidade, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Nacionalidade });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.Profissao, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Profissao });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.Foto, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.Foto });
            parameters.Add(new SqlParameter() { ParameterName = AlunoFactory.FieldNames.ExameMedico, SqlDbType = SqlDbType.VarChar, Size = 0, Value = item.ExameMedico });

            return parameters;
        }

        protected override string GetFindByProcedureName()
        {
            return ProcedureNames.FindByID;
        }

        protected override string GetFindAllProcedureName()
        {
            return ProcedureNames.FindAll;
        }

        #endregion

    }
}
