using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Web_Flight_Reservation_System
{
    public class SQLDataAccessHelper1
    {
        public static SqlConnection UserSqlConnection()
        {
            string connectionstring = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionstring);
            connection.Open();
            return connection;
        }
        public DataSet getdataset(string commandtext)
        {
            using (var connection = SQLDataAccessHelper1.UserSqlConnection())
            using (var comm = new SqlCommand(commandtext,connection))
            {
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter(comm);
                sda.Fill(ds);
                return ds;
            }
        }
        public DataTable getdatareader(string commandtext)
        {
            using (var connection = SQLDataAccessHelper1.UserSqlConnection())
            using (var comm = new SqlCommand(commandtext, connection))
            {
                SqlDataReader dr;
                dr = comm.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                return dt;
              
            }
        }

        public int ExecuteQuery(string commandtext)
        {
            int affectedrow = 0;
            using (var connection = SQLDataAccessHelper1.UserSqlConnection())
            using (var comm = new SqlCommand(commandtext, connection))
            {
                affectedrow = comm.ExecuteNonQuery();
            }
            return affectedrow;
        }

    }
}