using RunToLive.Infrastructure.RepositoryFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Domain.Model
{
    public class AlunoService
    {
        private static IAlunoRepository repositorio;

        static AlunoService()
        {
            AlunoService.repositorio = RepositoryFactory.GetRepository<IAlunoRepository, Aluno>();
        }


        public static IList<Aluno> GetAll()
        {
            return repositorio.BuscarTodos();
        }
    }
}
