using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RunToLive.Infraestrutura.BaseDominio
{
    public class EntidadeBase : IEntidade
    {
        private object id;

        public EntidadeBase(object id)
        {
            this.id = id;
        }

        public object ID
        {
            get { return this.id; }
        }
    }
}
