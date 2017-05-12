using Phase5.App_Code;
using System;
using System.Data.SqlClient;

namespace Phase4
{
    public partial class showUser : System.Web.UI.Page
    {
        private DBMaster dbm = new DBMaster();
        protected void Page_Load(object sender, EventArgs e)
        {
            // Vars
            string id = Session["userID"].ToString(),
                        firstName, lastName, user, pw, addr, e_mail, phonenum;
            // Reader
            SqlDataReader reader = dbm.getReader("SELECT * FROM [dbo].[person] where id=" + id);

            reader.Read();

            // save info from db into vars
            firstName = reader["firstName"].ToString();
            lastName = reader["lastName"].ToString();
            user = reader["userName"].ToString();
            pw = reader["password"].ToString();
            addr = reader["address"].ToString();
            e_mail = reader["email"].ToString();
            phonenum = reader["phone"].ToString();

            // close connection
            dbm.closeConnection();

            // display info
            first.Text = firstName;
            last.Text = lastName;
            username.Text = user;
            password.Text = pw;
            address.Text = addr;
            email_address.Text = e_mail;
            phone_number.Text = phonenum;

        }
    }
}