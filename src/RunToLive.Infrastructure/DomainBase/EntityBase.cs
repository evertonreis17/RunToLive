using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.DomainBase
{
    public class EntityBase : IEntity
    {
        private object id;

        public EntityBase(object id)
        {
            this.id = id;
        }

        public object ID
        {
            get { return this.id; }
        }
    }
}
