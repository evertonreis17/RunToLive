using RunToLive.Domain.Model;
using RunToLive.Presenters.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Presenters
{
    public class UsersPresenter
    {
        private IUsersView view;

        public UsersPresenter(IUsersView view)
        {
            this.view = view;
        }

        public void LoadView()
        {
            IList<Aluno> alunos = AlunoService.GetAll();

            view.Entities = alunos.OrderBy(a => a.Nome).ToList();
        }

        
    }
}
