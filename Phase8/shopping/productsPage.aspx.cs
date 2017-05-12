using Phase5.App_Code;
using System;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Phase_7.shopping
{

    public partial class productsPage : System.Web.UI.Page
    {
        DBMaster dbm;
        protected void Page_Load(object sender, EventArgs e)
        {
            // check if user logged in
            if(Session["ID"] == null)
            {
                Response.Redirect("../index.aspx");
            }
            
            // Connect to DB
            dbm = new DBMaster();

            // vars
            string query = "select * from [dbo].[products] where currentAmount > 0",
                   productName, productDescription, productPrice, productID;

            // get reader
            SqlDataReader reader = dbm.getReader(query);

            // read from DB
            while (reader.Read())
            {
                // read values from DB
                productName = reader["productName"].ToString();
                productDescription = reader["description"].ToString();
                productPrice = reader["price"].ToString();
                productID = reader["pid"].ToString();

                // create new row
                TableRow row = new TableRow();

                // create the 4 cells
                TableCell nCell = new TableCell(); // name
                TableCell dCell = new TableCell(); // description
                TableCell pCell = new TableCell(); // price
                TableCell bCell = new TableCell(); // buy link

                nCell.Attributes.Add("class", "cells");
                dCell.Attributes.Add("class", "cells");
                pCell.Attributes.Add("class", "cells");
                bCell.Attributes.Add("class", "cells");

                // create buy link 
                HtmlAnchor buyLink = new HtmlAnchor();
                buyLink.Attributes.Add("style", "color: #003B6F"); // change from default(silver) to blue
                buyLink.HRef = "buyNow.aspx?id=" + productID;
                buyLink.InnerText = "Buy Now";

                // set cell text
                nCell.Text = productName;
                dCell.Text = productDescription;
                pCell.Text = "$" + productPrice;
                bCell.Controls.Add(buyLink);

                // add cells to row
                row.Cells.Add(nCell);
                row.Cells.Add(dCell);
                row.Cells.Add(pCell);
                row.Cells.Add(bCell);

                // add row to table
                productTable.Rows.Add(row);
            } // end while(reader.Read())

            // close connection to db
            dbm.closeConnection();

        } // end method Page_Load(object sender, EventArgs e)

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session["ID"] = null;
            Session["firstName"] = null;
            Response.Redirect("../index.aspx");
            dbm.closeConnection();
        }
    }
}