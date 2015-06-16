using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace RunToLive.Infraestrutura.EntityFactoryFramework.Configuration
{
    public sealed class EntityMappingElement : ConfigurationElement
    {
        [ConfigurationProperty(EntityMappingConstants.EntityShortTypeNameAttributeName, IsKey = true, IsRequired = true)]
        public string EntityShortTypeName
        {
            get 
            {
                return (string)this[EntityMappingConstants.EntityShortTypeNameAttributeName];
            }
            set 
            {
                this[EntityMappingConstants.EntityShortTypeNameAttributeName] = value;
            }
        }

        [ConfigurationProperty(EntityMappingConstants.EntityFactoryFullTypeNameAttributesName, IsRequired = true)]
        public string EntityfactoryFullTypeName
        {
            get
            {
                return (string)this[EntityMappingConstants.EntityFactoryFullTypeNameAttributesName];
            }
            set
            {
                this[EntityMappingConstants.EntityFactoryFullTypeNameAttributesName] = value;
            }
        }
    }
}
