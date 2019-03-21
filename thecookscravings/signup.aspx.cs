using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using thecookscravings.Models;

namespace thecookscravings
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            User user = new User(txtUserName.Text, txtFirstName.Text, txtLastName.Text, txtEmail.Text);
            user.RegisterWithoutImage(txtPassword.Text);

            Response.Redirect("login.aspx");
        }
    }
}