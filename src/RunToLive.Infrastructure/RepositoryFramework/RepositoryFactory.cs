using RunToLive.Infrastructure.RepositoryFramework.Configuration;
using RunToLive.Infrastructure.DomainBase;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.RepositoryFramework
{
    public static class RepositoryFactory
    {
        private static Dictionary<string, object> repositories = new Dictionary<string, object>();
        
        public static TRepository GetRepository<TRepository, TEntity>() 
            where TRepository : class, IRepository<TEntity>
            where TEntity : IAggregateRoot
        {
            TRepository repository = default(TRepository);

            string interfaceShortName = typeof(TRepository).Name;

            if (!RepositoryFactory.repositories.ContainsKey(interfaceShortName))
            {
                RepositorySettings settings = (RepositorySettings)ConfigurationManager.GetSection(RepositoryMappingConstants.RepositoryMappingsConfigurationSectionName);

                Type repositoryType = null;

                if (settings.RepositoryMappings.ContainsKey(interfaceShortName))
                {
                    string typename  = settings.RepositoryMappings[interfaceShortName].RepositoryFullTypeName;

                    repositoryType = Type.GetType(typename);
                }

                if (repositoryType == null)
                {
                    throw new ArgumentNullException("repositoryType", "Não é possível criar o repositório. Há algumas definições de configuração inválidas no mapeamento.");
                }

                repository = Activator.CreateInstance(repositoryType) as TRepository;

                RepositoryFactory.repositories.Add(interfaceShortName, repository);
            }
            else
            {
                repository = (TRepository)RepositoryFactory.repositories[interfaceShortName];
            }

            return repository;
        }
    }
}
