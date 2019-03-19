using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace thecookscravings.Models
{
    public class User
    {
        int Id { get; }
        string FirstName { get; set; }
        string LastName { get; set; } 
        string Email { get; set; }
        string Status { get; set; }
        string Image { get; set; }


    }
}