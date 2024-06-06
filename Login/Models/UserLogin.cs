using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Login.Models
{
    public class UserLogin
    {
        [Display(Name ="Correo")]
        [Required(AllowEmptyStrings =false,ErrorMessage ="Correo required")]
        public string EmailID { get; set; }

        [DataType(DataType.Password)]
        [Required(AllowEmptyStrings = false, ErrorMessage = "Password required")]
        public string Password { get; set; }

        [Display(Name = "Recordar")]
        public bool RememberMe { get; set; }
    }
}