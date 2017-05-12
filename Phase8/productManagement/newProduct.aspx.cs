using Phase5.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phase6.productManagement
{
    public partial class newProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["ID"] == null)
            {
                Response.Redirect("../index.aspx");
            }
        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session["ID"] = null;
            Session["firstName"] = null;
            Response.Redirect("../index.aspx");
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            // get DBM object
            DBMaster dbm = new DBMaster();
    
            // get vars from input
            string productName = newProductNameInput.Text,
                   productDescription = newProductDescriptionInput.Text,
                   productPrice = newProductPriceInput.Text,
                   productQuantity = newProductQuantityInput.Text,

                   // generate query
                   query = "INSERT INTO [dbo].[products] ([productName],[description],[price],[currentAmount]) VALUES (\'" + productName + "\',\'" + productDescription + "\',\'" + productPrice + "\',\'" + productQuantity + "\')";
    
            // execute the query
            dbm.executeQuery(query);

            // close connection
            dbm.closeConnection();

            // clear text fields
            newProductNameInput.Text = "";
            newProductDescriptionInput.Text = "";
            newProductPriceInput.Text = "";
            newProductQuantityInput.Text = "";
        }
    }
}