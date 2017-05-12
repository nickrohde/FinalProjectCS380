using System;
using System.Data.SqlClient;
using System.Configuration;

namespace Phase5.App_Code
{
    public class DBMaster
    {
        private SqlConnection conn;

        public SqlConnection getConnection()
        {
            conn = new SqlConnection(ConfigurationManager.AppSettings["connstr"]);
            conn.Open();
            return conn;
        }

        public SqlDataReader getReader(string query)
        {
            // create new command
            SqlCommand cmd = new SqlCommand(query);

            // set up command
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = this.getConnection();

            // return reader object
            return cmd.ExecuteReader();
        }
        
        public void executeQuery(string query)
        {
            // create new command 
            SqlCommand cmd = new SqlCommand(query);

            // set up command
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = this.getConnection();

            // execute command
            cmd.ExecuteNonQuery();
        }

        public void closeConnection()
        {
            if(conn != null && conn.State == System.Data.ConnectionState.Open)
            {
                this.conn.Close();
            }
        }
    }
}