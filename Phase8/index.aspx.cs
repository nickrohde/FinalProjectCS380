using Phase5.App_Code;
using System;
using System.Data.SqlClient;

namespace Phase5
{
    public partial class WebForm : System.Web.UI.Page
    {
        DBMaster dbm = new DBMaster();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["ID"] == null)
            {
                loginBox.Visible = true;
                logoutBox.Visible = false;
            }

            else
            {
                Welcome_Message.Text = "Welcome " + Session["firstName"].ToString();
                loginBox.Visible = false;
                logoutBox.Visible = true;
            }
            
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            // get reader from DBMaster
            SqlDataReader reader = dbm.getReader("SELECT [firstName], [ID] FROM [dbo].[person] WHERE userName = '" + usernameBox.Text + "' AND password = '" + passwordBox.Text + "'");

            // vars
            string fname = "",
                   id = "";
            
            // login successfull
            if(reader.Read())
            {
                // get name and ID from DB
                Session["firstName"] = fname = reader["firstName"].ToString();
                Session["ID"] = id = reader["ID"].ToString();

                // display welcome message
                Welcome_Message.Text = "Welcome " + fname;

                // hide loginbox and show logout button
                loginBox.Visible = false;
                logoutBox.Visible = true;
            }

            // login failed
            else
            {
                usernameBox.Text = "Login Failed.";
                Welcome_Message.Text = "";
                loginBox.Visible = true;
                logoutBox.Visible = false;
            }

            // close connection to db
            dbm.closeConnection();
        }
        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session["ID"] = null;
            Session["firstName"] = null;
            Response.Redirect("/index.aspx");
        }

    }
}