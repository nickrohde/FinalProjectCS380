using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phase8.communityTools
{
    public partial class CommunityAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["ID"] != "community")
            {
                Response.Redirect("../LoginPage/LoginPage.aspx");
            }
        }
    }
}