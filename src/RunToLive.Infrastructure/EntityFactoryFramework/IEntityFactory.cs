using RunToLive.Infrastructure.DomainBase;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.EntityFactoryFramework
{
    public interface IEntityFactory<T> where T : IEntity
    {
        T BuildEntity(IDataReader reader);
    }
}
