using RunToLive.Infrastructure.EntityFactoryFramework.Configuration;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.EntityFactoryFramework.Configuration
{
    public class EntitySettings : ConfigurationSection
    {
        [ConfigurationProperty(EntityMappingConstants.CofigurationPropertyName, IsDefaultCollection = true)]
        public EntityMappingCollection EntityMappings
        {
            get { return (EntityMappingCollection)base[EntityMappingConstants.CofigurationPropertyName]; }
        }
    }
}
