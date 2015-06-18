using RunToLive.Infrastructure.DomainBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Infrastructure.RepositoryFramework
{
    public interface IRepository<T> 
        where T : IAggregateRoot
    {
        T this[object id] { get; set; }
        T BuscarPor(object id);
        IList<T> BuscarTodos();
        void Add(T item);
        void Remover(object id);

    }
}
