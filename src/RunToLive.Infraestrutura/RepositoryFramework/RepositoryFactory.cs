using RunToLive.Infraestrutura.RepositoryFramework.Configuration;
using RunToLive.Infraestrutura.BaseDominio;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace RunToLive.Infraestrutura.RepositoryFramework
{
    public static class RepositoryFactory
    {
        private static Dictionary<string, object> repositories = new Dictionary<string, object>();
        
        public static TRepository GetRepository<TRepository, TEntity>() 
            where TRepository : class, IRepository<TEntity>
            where TEntity : IRaizAgregado
        {
            TRepository repository = default(TRepository);

            string interfaceShortName = typeof(TRepository).Name;

            if (!RepositoryFactory.repositories.ContainsKey(interfaceShortName))
            {
                RepositorySettings settings = (RepositorySettings)ConfigurationManager.GetSection(RepositoryMappingConstants.RepositoryMappingsConfigurationSectionName);

                Type repositoryType = null;

                if (settings.RepositoryMappings.ContainsKey(interfaceShortName))
                {
                    repositoryType = Type.GetType(settings.RepositoryMappings[interfaceShortName].RepositoryFullTypeName);
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
