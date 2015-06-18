
using RunToLive.Infrastructure.DomainBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.RepositoryFramework
{
    public abstract class RepositoryBase<T> : IRepository<T> 
        where T : IAggregateRoot
    {

        #region IRepository<T> Members

        public abstract T BuscarPor(object key);
        public abstract IList<T> BuscarTodos();
        public abstract void Add(T item);
        public abstract void Remover(object id);

        #endregion

        public T this[object id]
        {
            get
            {
                return BuscarPor(id);
            }
            set
            {
                if (BuscarPor(id) == null)
                {
                    Add(value);
                }
            }
        }
    }
}
