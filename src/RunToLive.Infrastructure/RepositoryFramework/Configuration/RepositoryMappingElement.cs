﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.RepositoryFramework.Configuration
{
    public sealed class RepositoryMappingElement : ConfigurationElement
    {
        [ConfigurationProperty(RepositoryMappingConstants.InterfaceShortTypeNameAttributeName, IsKey= true, IsRequired= true)]
        public string InterfaceShortTypeName
        {
            get
            {
                return (string)this[RepositoryMappingConstants.InterfaceShortTypeNameAttributeName];
            }
            set
            {
                this[RepositoryMappingConstants.InterfaceShortTypeNameAttributeName] = value;
            }
        }

        [ConfigurationProperty(RepositoryMappingConstants.RepositoryFullTypeNameAttributeName, IsRequired=true)]
        public string RepositoryFullTypeName
        {
            get
            {
                return (string)this[RepositoryMappingConstants.RepositoryFullTypeNameAttributeName];
            }
            set
            {
                this[RepositoryMappingConstants.RepositoryFullTypeNameAttributeName] = value;
            }
        }
    }
}
