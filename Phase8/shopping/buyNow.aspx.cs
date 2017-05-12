using Phase5.App_Code;
using System;
using System.Data.SqlClient;
using System.Threading;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace Phase_7.shopping
{
    public partial class buyNow : System.Web.UI.Page
    {
        DBMaster dbm;

        protected void Page_Load(object sender, EventArgs e)
        {
            // check if user logged in
            if (Session["ID"] == null)
            {
                Response.Redirect("../index.aspx");
            }

            // Vars
            string ID = Session["ID"].ToString(), // user ID 
                   PID = Request.QueryString["id"], // product id passed from product page
                   query = "select * from [dbo].[person] where id = '" + ID + "'", // query to get personal details of user
                   emailMsg = "", // msg that will be emailed to customer
                   customerName = "", // first name of customer
                   customerAddress = "", // customer's address
                   customerEmail = "", // customer's email
                   productName = "", // name of product with PID
                   productPrice = ""; // price of product with PID
            uint productAmount = 0; // uint ensures positive values only
            
            // Establish DB connection
            dbm = new DBMaster();

            // Get reader for DB
            SqlDataReader reader = dbm.getReader(query);

            if (reader.Read()) // ensure that valid id was passed
            {
                customerAddress = reader["address"].ToString();
                customerName = reader["firstName"].ToString();
                customerEmail = reader["email"].ToString();
            }
            else // Session ID is incorrect, force user to log in again
            {
                Session["ID"] = null;
                Response.Redirect("../index.aspx");
            }

            // get new reader for person table
            reader.Close();

            query = "select * from [dbo].[products] where pid = '" + PID + "'";
            reader = dbm.getReader(query);

            if (reader.Read())
            {
                productName = reader["productName"].ToString();
                productPrice = reader["price"].ToString();
                string temp = reader["currentAmount"].ToString(); // temp storage

                try // this will fail if currentAmount is not a positive integer
                {
                    if (!UInt32.TryParse(temp, out productAmount))
                    {
                        throw new FormatException("invalid database entry 'currentAmount'"); // the conversion did not succeed
                    } // end if (!UInt32.TryParse(temp, out productAmount))
                } // end try
                catch(FormatException error)
                {
                    reader.Close(); // close reader
                    query = "update [dbo].[products] set [currentAmount] = '0' where pid = '" + PID + "'";
                    dbm.executeQuery(query); // set currentAmount to 0 to correct this error
                    Msg.Text = "We are sorry, the item you attempted to purchase is out of stock. You will be redirected shortly."; // display error to user
                    Thread.Sleep(5000); // allow time for user to read error
                    dbm.closeConnection(); // close connection to db
                    Response.Redirect("productPage.aspx?error=" + error.Message); // return user to product page
                } // end catch
            } // end if (reader.Read())
            else // the PID passed was invalid
            {
                Response.Redirect("productPage.aspx");
            }

            // update DB to account for the sale
            query = "update [dbo].[products] set [currentAmount] = '" + (productAmount - 1) + "' where pid = '" + PID + "'";
            dbm.executeQuery(query);

            // close connection
            dbm.closeConnection();

            // send email to customer
            emailMsg = "Hi " + customerName + " Thank you for your purchase of " + productName + ". <br /> Your credit card on file will be charged $" + productPrice + ", and the item will be shipped to your address at: <br /> " + customerAddress + " <br /> We hope to see you again soon!";
            sendEmail(customerEmail, emailMsg);

            // display message to user that sale was completed
            Msg.Text = "Thank you for your purchase, " + customerName + ". <br /> Your credit card on file will be charged $" + productPrice + " for your purchase of " + productName + ", and the item will be shipped to your address at: <br /> " + customerAddress + " <br /> We hope to see you again soon! <br /> <br /> <b>Note:</b> A copy of this invoice will also be sent to your email on file.";
        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session["ID"] = null; // end session
            Session["firstName"] = null; // delete stored info
            Response.Redirect("../index.aspx"); // redirect to homepage
            dbm.closeConnection(); // close connection to db
        }

        private void sendEmail(string recipientEmail, string emailBody)
        {
            MailMessage mail = new MailMessage(); // email object

            // create new email
            mail.From = new MailAddress(ConfigurationManager.AppSettings["senderEmail"]);
            mail.To.Add(recipientEmail);
            mail.Subject = "Your Purchase";
            mail.Body = emailBody;

            mail.IsBodyHtml = true;

            // connect to gmail server
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);

            // login to gmail server
            smtp.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["senderEmail"], ConfigurationManager.AppSettings["senderPassword"]);
            smtp.EnableSsl = true;

            // send email to customer
            smtp.Send(mail);    
        }
    }
}