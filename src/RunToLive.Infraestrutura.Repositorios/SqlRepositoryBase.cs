using RunToLive.Infraestrutura.EntityFactoryFramework;
using RunToLive.Infraestrutura.RepositoryFramework;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using RunToLive.Infraestrutura.BaseDominio;

namespace RunToLive.Infraestrutura.Repositories
{
    public abstract class SqlRepositoryBase<T> : RepositoryBase<T>
        where T : IRaizAgregado
    {
        private Database database;
        private IEntityFactory<T> entityFactory;

        protected SqlRepositoryBase() 
            : base()
        {
            this.database = DatabaseBuilder.CreateDatabase();

            this.entityFactory = EntityFactoryBuilder.BuildFactory<T>();
        }

        #region Metodos Abstratos

        protected abstract DbParameter GetIDParameter(object id);
        protected abstract IList<DbParameter> GetStoreParameters(T item);
        protected abstract string GetFindByProcedureName();
        protected abstract string GetFindAllProcedureName();

        #endregion


        #region Metodos Publicos

        public override T BuscarPor(object id)
        {
            List<DbParameter> parameters = new List<DbParameter>();

            parameters.Add(GetIDParameter(id));

            return BuildEntityFromSql(GetFindByProcedureName(), parameters);
        }

        public override IList<T> BuscarTodos()
        {
            return BuildEntitiesFromSql(GetFindAllProcedureName());
        }

        #endregion


        #region Metodos Protegidos

        //protected T BuildEntityFromSql(string storedProcedureName)
        //{
        //    T entity = default(T);

        //    using (IDataReader reader = ExecuteReader(storedProcedureName))
        //    {
        //        if (reader.Read())
        //        {
        //            entity = BuildEntityFromReader(reader);
        //        }
        //    }

        //    return entity;
        //}

        protected T BuildEntityFromSql(string storedProcedureName, IList<DbParameter> parameters)
        {
            T entity = default(T);

            using (IDataReader reader = ExecuteReader(storedProcedureName, parameters))
            {
                if (reader.Read())
                {
                    entity = BuildEntityFromReader(reader);
                }
            }

            return entity;
        }

        protected IList<T> BuildEntitiesFromSql(string storedProcedureName)
        {
            List<T> entities = new List<T>();

            using (IDataReader reader = ExecuteReader(storedProcedureName))
            {
                while (reader.Read())
                {
                    entities.Add(BuildEntityFromReader(reader));
                }
            }

            return entities;
        }

        protected IList<T> BuildEntitiesFromSql(string storedProcedureName, IList<DbParameter> parameters)
        {
            List<T> entities = new List<T>();

            using (IDataReader reader = ExecuteReader(storedProcedureName, parameters))
            {
                while (reader.Read())
                {
                    entities.Add(BuildEntityFromReader(reader));
                }
            }

            return entities;
        }

        #endregion


        #region Metodos Auxiliares Protegidos

        protected void ExecuteNonQuery(string storedProcedureName, IList<DbParameter> parameters)
        {
            DbCommand command = database.GetStoredProcCommand(storedProcedureName);

            foreach (DbParameter parameter in parameters)
            {
                command.Parameters.Add(parameter);
            }

            database.ExecuteNonQuery(command);
        }

        protected IDataReader ExecuteReader(string storedProcedureName)
        {
            DbCommand command = database.GetStoredProcCommand(storedProcedureName);

            return database.ExecuteReader(command);
        }

        protected IDataReader ExecuteReader(string storedProcedureName, IList<DbParameter> parameters)
        {
            DbCommand command = database.GetStoredProcCommand(storedProcedureName);

            foreach (DbParameter parameter in parameters)
            {
                command.Parameters.Add(parameter);
            }

            return database.ExecuteReader(command);
        }

        protected T BuildEntityFromReader(IDataReader reader)
        {
            T entity = entityFactory.BuildEntity(reader);

            return entity;
        }
        
        #endregion

        //protected void ExecuteNonQuery(string storedProcedureName) 
        //{
        //    DbCommand command = database.GetStoredProcCommand(storedProcedureName);

        //    database.ExecuteNonQuery(command);
        //}
    }
}
