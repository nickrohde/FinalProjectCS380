using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phase8.adminTools
{
    public partial class admin_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["ID"] != "admin")
            {
                Response.Redirect("../LoginPage/LoginPage.aspx");
            }
        }

        protected void testButton2_Click(object sender, EventArgs e)
        {

        }

        protected void testButton3_Click(object sender, EventArgs e)
        {

        }
    }
}