using RunToLive.Infraestrutura.BaseDominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Infraestrutura.RepositoryFramework
{
    public abstract class RepositoryBase<T> : IRepository<T> 
        where T : IRaizAgregado
    {

        #region IRepository<T> Members

        public abstract T BuscarPor(object key);
        public abstract IList<T> BuscarTodos();
        public abstract void Add(T item);
        public abstract void Remover(T item);

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
