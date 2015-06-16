using RunToLive.Infraestrutura.BaseDominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Infraestrutura.RepositoryFramework
{
    public interface IRepository<T> 
        where T : IRaizAgregado
    {
        T this[object id] { get; set; }
        T BuscarPor(object id);
        IList<T> BuscarTodos();
        void Add(T item);
        void Remover(T item);

    }
}
