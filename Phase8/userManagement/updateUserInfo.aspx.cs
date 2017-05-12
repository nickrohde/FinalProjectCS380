using Phase5.App_Code;
using System;
using System.Data.SqlClient;

namespace Phase4
{
    public partial class update : System.Web.UI.Page
    {
        private DBMaster dbm = new DBMaster();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Vars
                string id = Session["userID"].ToString(),
                       firstName, 
                       lastName, 
                       user, 
                       pw, 
                       addr, 
                       e_mail, 
                       phonenum;
                // Reader                
                SqlDataReader reader = dbm.getReader("SELECT * FROM [dbo].[person] where id=" + id);

                reader.Read();

                // get vars from DB
                firstName = reader["firstName"].ToString();
                lastName = reader["lastName"].ToString();
                user = reader["userName"].ToString();
                pw = reader["password"].ToString();
                addr = reader["address"].ToString();
                e_mail = reader["email"].ToString();
                phonenum = reader["phone"].ToString();

                // close connection
                dbm.closeConnection();

                // display the info taken from db
                fname.Text = firstName;
                lname.Text = lastName;
                usernm.Text = user;
                passw.Text = pw;
                addrs.Text = addr;
                email.Text = e_mail;
                phone.Text = phonenum;

            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            // vars
            string id = Session["userID"].ToString(),
                   firstN = fname.Text,
                   lastN = lname.Text,
                   userN = usernm.Text,
                   passW = passw.Text,
                   addres = addrs.Text,
                   emailA = email.Text,
                   phoneN = phone.Text,
                   query = "UPDATE [dbo].[person] SET [firstName] = \'" + firstN + "\', [lastName] = \'" + lastN + "\', [userName] = \'" + userN + "\', [password] = \'" + passW + "\', [address] = \'" + addres + "\', [email] = \'" + emailA + "\', [phone] = \'" + phoneN + "\' WHERE id = " + id;
            dbm.executeQuery(query);

            // close connection
            dbm.closeConnection();

            // send user to next page
            Response.Redirect("showUser.aspx");
        }
    }
}