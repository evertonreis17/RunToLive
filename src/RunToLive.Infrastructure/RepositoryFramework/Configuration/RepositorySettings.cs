using RunToLive.Infrastructure.RepositoryFramework.Configuration;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.RepositoryFramework.Configuration
{
    public class RepositorySettings : ConfigurationSection
    {
        [ConfigurationProperty(RepositoryMappingConstants.ConfigurationPropertyName, IsDefaultCollection = true)]
        public RepositoryMappingCollection RepositoryMappings
        {
            get { return (RepositoryMappingCollection)base[RepositoryMappingConstants.ConfigurationPropertyName]; }
        }
    }
}
