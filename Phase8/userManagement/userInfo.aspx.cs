using System;
using System.Data.SqlClient;
using Phase5.App_Code;

namespace Phase1
{
    public partial class info : System.Web.UI.Page
    {
        private DBMaster dbm = new DBMaster();
        protected void Page_Load(object sender, EventArgs e)
        {
            // Vars
            string query = "INSERT INTO [dbo].[person] ( [firstName],[lastName],[userName],[password],[address],[email],[phone] ) VALUES ( '" + Request.Form["fname"] + "', '" + Request.Form["lname"] + "', '" + Request.Form["user"] + "', '" + Request.Form["pw"] + "', '" + Request.Form["addr"] + "', '" + Request.Form["email"] + "', '" + Request.Form["phone"] + "' ) SELECT SCOPE_IDENTITY();",
                   firstName = "<b>First Name: </b>" + Request.Form["fname"],
                   lastName = "<b>Last Name: </b>" + Request.Form["lname"],
                   user = "<b>Username: </b>" + Request.Form["user"],
                   pw = "<b>Password: </b>" + Request.Form["pw"],
                   addr = "<b>Address: </b>" + Request.Form["addr"],
                   e_mail = "<b>Email: </b>" + Request.Form["email"],
                   phonenum = "<b>Phone Number: </b>" + Request.Form["phone"],
                   id = "";
            // Reader
            SqlDataReader reader = dbm.getReader(query);

            // get input
            first.Text = firstName;
            last.Text = lastName;
            username.Text = user;
            password.Text = pw;
            address.Text = addr;
            email_address.Text = e_mail;
            phone_number.Text = phonenum;            
            
            // read and save id
            reader.Read();
            id = reader[0].ToString();

            // close connection
            dbm.closeConnection();

            // save the id to session
            Session["userID"] = id;
        }
    }
}