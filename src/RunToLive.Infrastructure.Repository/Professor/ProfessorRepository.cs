using RunToLive.Domain.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.Repositories
{
    public class ProfessorRepository : SqlRepositoryBase<Professor>
    {
        #region ProcedureNames

        internal class ProcedureNames
        {
            public const string FindByID = "";
            public const string FindByEmail = "";
            public const string FindAll = "";
            public const string SaveProfessor = "";
            public const string RemoveProfessor = "";
        }

        #endregion



        protected override DbParameter GetIDParameter(object id)
        {
            return new SqlParameter() { ParameterName = ProfessorFactory.FieldNames.ProfessorID , SqlDbType = SqlDbType.UniqueIdentifier, Size = 0, Value = id };
        }

        protected override IList<DbParameter> GetStoreParameters(Professor item)
        {
            throw new NotImplementedException();
        }

        protected override string GetFindByProcedureName()
        {
            throw new NotImplementedException();
        }

        protected override string GetFindAllProcedureName()
        {
            throw new NotImplementedException();
        }

        public override void Add(Professor item)
        {
            throw new NotImplementedException();
        }

        public override void Remover(object id)
        {
            throw new NotImplementedException();
        }
    }
}
