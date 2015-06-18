using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.DomainBase
{
    public interface IEntity
    {
        object ID { get; }
    }
}
