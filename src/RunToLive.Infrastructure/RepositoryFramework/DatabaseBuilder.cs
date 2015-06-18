using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Data.Oracle;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.RepositoryFramework
{
    public static class DatabaseBuilder
    {
        public static Database CreateDatabase()
        {
            DatabaseSettings settings = (DatabaseSettings)ConfigurationManager.GetSection("dataConfiguration");
            
            string connectionString = ConfigurationManager.ConnectionStrings[settings.DefaultDatabase].ConnectionString;
            string providerName = ConfigurationManager.ConnectionStrings[settings.DefaultDatabase].ProviderName;
            
            Database database = null;

            switch (providerName.ToUpper()) 
            { 
                case "SYSTEM.DATA.SQLCLIENT":
                    database = new SqlDatabase(connectionString);
                    break;
                case "SYSTEM.DATA.ORACLECLIENT":
                    database = new OracleDatabase(connectionString);
                    break;
            }

            return database;
        }
    }
}
