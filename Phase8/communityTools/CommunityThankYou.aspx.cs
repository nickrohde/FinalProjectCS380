﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phase8.communityTools
{
    public partial class CommunityThankYou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RedirectHome(object sender, EventArgs e)
        {
            Session["ID"] = null;
            Response.Redirect("..\\LoginPage\\LoginPage.aspx");
        }
    }
}