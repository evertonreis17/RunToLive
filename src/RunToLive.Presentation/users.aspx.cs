using RunToLive.Domain.Model;
using RunToLive.Presenters;
using RunToLive.Presenters.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RunToLive.Presentation
{
    public partial class Users : System.Web.UI.Page, IUsersView
    {
        private UsersPresenter presenter;

        public IList<Aluno> Entities
        {
            get { throw new NotImplementedException(); }
            set
            {
                gvUsers.DataSource = value;
                gvUsers.DataBind();
            }
        }

        public Users()
        {
            presenter = new UsersPresenter(this); 
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            presenter.LoadView();
        }
    }
}