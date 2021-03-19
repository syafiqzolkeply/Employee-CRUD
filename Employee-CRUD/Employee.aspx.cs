using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_CRUD
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void LoadData()
        {
            //do something
        }

        protected void Insert(object sender, EventArgs e)
        {
            //do something
        }

        protected void Clear(object sender, EventArgs e)
        {
            //do something
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.LoadData();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.LoadData();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // do something
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // do something
        }
    }
}