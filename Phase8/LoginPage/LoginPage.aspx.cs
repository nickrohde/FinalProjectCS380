using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phase8.LoginPage
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["ID"] = null;
        }

        protected void LogInButtonClick(object sender, EventArgs e)
        {
            if(usernameBox.Text == "community")
            {
                Session["ID"] = "community";
                Response.Redirect("..\\communityTools\\CommunityHome.aspx");
            }
            else if(usernameBox.Text == "faculty")
            {
                Session["ID"] = "faculty";
                Response.Redirect("..\\facultyTools\\FacultyHome.aspx");
            }
            else if (usernameBox.Text == "student")
            {
                Session["ID"] = "student";
                Response.Redirect("..\\studentTools\\studentCreateAPlan.aspx");
            }
            else if (usernameBox.Text == "admin")
            {
                Session["ID"] = "admin";
                Response.Redirect("..\\adminTools\\AdminHome.aspx");
            }
        }

        protected void SignUpButtonClick(object sender, EventArgs e)
        {
            Session["ID"] = null;
            Response.Redirect("..\\communityTools\\CommunitySignUp.aspx");
        }
    }
}