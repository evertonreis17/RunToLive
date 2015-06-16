using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace RunToLive.Infraestrutura.EntityFactoryFramework.Configuration
{
    public sealed class EntityMappingCollection : ConfigurationElementCollection
    {
        protected override ConfigurationElement CreateNewElement()
        {
            return new EntityMappingElement();
        }

        protected override object GetElementKey(ConfigurationElement element)
        {
            return ((EntityMappingElement)element).EntityShortTypeName;
        }

        public override ConfigurationElementCollectionType CollectionType
        {
            get
            {
                return ConfigurationElementCollectionType.BasicMap;
            }
        }

        protected override string ElementName
        {
            get
            {
                return EntityMappingConstants.ConfigurationElementName;
            }
        }

        public EntityMappingElement this[int index]
        {
            get { return (EntityMappingElement)BaseGet(index); }
            set
            {
                if (BaseGet(index) != null)
                {
                    BaseRemoveAt(index);
                }

                BaseAdd(index, value);
            }
        }

        public new EntityMappingElement this[string entityShortTypeName]
        {
            get { return (EntityMappingElement)BaseGet(entityShortTypeName); }
        }

        public bool ContainsKey(string keyName)
        {
            bool result = false;
            object[] keys = BaseGetAllKeys();

            foreach (object key in keys)
            {
                if ((string)key == keyName)
                {
                    result = true;
                    break;
                }
            }

            return result;
        }
    }
}
