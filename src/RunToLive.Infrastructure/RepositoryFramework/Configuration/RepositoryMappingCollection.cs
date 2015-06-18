using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.RepositoryFramework.Configuration
{
    public sealed class RepositoryMappingCollection : ConfigurationElementCollection
    {
        protected override ConfigurationElement CreateNewElement()
        {
            return new RepositoryMappingElement();
        }

        protected override object GetElementKey(ConfigurationElement element)
        {
            return ((RepositoryMappingElement)element).InterfaceShortTypeName;
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
                return RepositoryMappingConstants.ConfigurationElementName;
            }
        }

        public RepositoryMappingElement this[int index]
        {
            get { return (RepositoryMappingElement)this.BaseGet(index); }
            set
            {
                if (BaseGet(index) != null)
                {
                    BaseRemoveAt(index);
                }

                BaseAdd(index, value);
            }
        }

        public new RepositoryMappingElement this[string interfaceShortTypeName]
        {
            get { return (RepositoryMappingElement)this.BaseGet(interfaceShortTypeName); }
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

        public void Clear()
        {
            BaseClear();
        }

        public void Remove(string name)
        {
            BaseRemove(name);
        }
    }
}
