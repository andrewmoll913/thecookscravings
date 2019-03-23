using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace thecookscravings.Models
{
    public class Recipe
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnect"].ConnectionString;
        SqlConnection conn;
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string PrepTime { get; set; }
        public string CookingTime { get; set; }
        public List<string> Steps { get; set; }
        public List<string> Ingredients { get; set; }
        public string Image { get; set; }

        public Recipe(string user_name, string name, string description, string prepTime, string cookingTime, string steps, string ingredients, string image)
        {
            conn = new SqlConnection(cs);
            conn.Open();
            
            Name = name;
            Description = description;
            PrepTime = prepTime;
            CookingTime = cookingTime;
            Image = image;
            using (SqlCommand cmd = new SqlCommand("insertRecipe"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@recipe_name", Name);
                cmd.Parameters.AddWithValue("@recipe_description", Description);
                cmd.Parameters.AddWithValue("@prep_time", PrepTime);
                cmd.Parameters.AddWithValue("@cooking_time", CookingTime);
                cmd.Parameters.AddWithValue("@cooking_time", CookingTime);
                Id = Convert.ToInt32(cmd.ExecuteScalar());
            }
            using (var reader = new StringReader(steps))
            {
                int count = 1;
                string query = "INSERT INTO steps(recipe_id, step_number, step_description) VALUES(@recipe_id, @step_number, @step_description)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@recipe_id", Id);
                for (string line = reader.ReadLine(); line != null; line = reader.ReadLine())
                {
                    cmd.Parameters.AddWithValue("@step_number", count);
                    cmd.Parameters.AddWithValue("@step_description", line);
                    cmd.ExecuteNonQuery();
                    Steps.Add(line);
                    count++;
                }
            }
            using (var reader = new StringReader(ingredients))
            {
                string query = "INSERT INTO ingredients(recipe_id, ingredient) VALUES(@recipe_id, @ingredient)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@recipe_id", Id);
                for (string line = reader.ReadLine(); line != null; line = reader.ReadLine())
                {
                    cmd.Parameters.AddWithValue("@ingredient", line);
                    Ingredients.Add(line);
                }
            }
            
        }
    }
}