using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace thecookscravings.Models
{
    public class User
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnect"].ConnectionString;
        SqlConnection conn;

        public int Id { get; set; }
        public string UserName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Status { get; set; }
        public string Image { get; set; }

        public User(string userName, string firstName, string lastName, string email, string status, string image)
        {
            UserName = userName;
            FirstName = firstName;
            LastName = lastName;
            Email = email;
            Status = status;
            Image = image;
        }

        public User(string userName, string firstName, string lastName, string email)
        {
            UserName = userName;
            FirstName = firstName;
            LastName = lastName;
            Email = email;
        }

        public User(string userName)
        {
            UserName = userName;
        }

        public void RegisterWithoutImage(string password)
        {
            conn = new SqlConnection(cs);
            conn.Open();

            string query = $"INSERT INTO users(user_name, first_name, last_name, email, password) " +
                $"VALUES('{ this.UserName }', '{ this.FirstName }', '{ this.LastName }', '{ this.Email }', '{ password }')";
            SqlCommand command = new SqlCommand(query, conn);

            command.ExecuteNonQuery();

            conn.Close();

        }

        public int Login(string password)
        {
            conn = new SqlConnection(cs);

            using (SqlCommand cmd = new SqlCommand("isValidUser"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@user_name", this.UserName);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Connection = conn;
                this.conn.Open();
                this.Id = Convert.ToInt32(cmd.ExecuteScalar());
                this.conn.Close();
            }
            return this.Id;
        }
        private static int ReadOneRow(IDataRecord record)
        {
            return (int)record[0];
        }
    }

    
}