using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace thecookscravings
{
    public partial class RecipeDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["recipe_id"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}