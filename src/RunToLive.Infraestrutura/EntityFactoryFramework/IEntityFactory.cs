using RunToLive.Infraestrutura.BaseDominio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace RunToLive.Infraestrutura.EntityFactoryFramework
{
    public interface IEntityFactory<T> where T : IEntidade
    {
        T BuildEntity(IDataReader reader);
    }
}
