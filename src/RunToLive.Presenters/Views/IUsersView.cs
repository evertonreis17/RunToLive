using RunToLive.Domain.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Presenters.Views
{
    public interface IUsersView
    {
        IList<Aluno> Entities { get; set; }
    }
}
