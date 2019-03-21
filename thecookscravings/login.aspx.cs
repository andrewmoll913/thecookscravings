using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using thecookscravings.Models;

namespace thecookscravings
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IsValidUser(object sender, EventArgs e)
        {
            User user = new User(UserLogin.UserName);
            int test = user.Login(UserLogin.Password);

            switch(test)
            {
                case -1:
                    UserLogin.FailureText = "The Account doesn't exist";
                    break;
                case -2:
                    UserLogin.FailureText = "The password is wrong";
                    break;
                default:
                    FormsAuthentication.RedirectFromLoginPage(user.UserName, UserLogin.RememberMeSet);
                    break;
            }
        }
    }
}