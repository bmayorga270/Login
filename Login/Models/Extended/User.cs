using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Login.Models
{
    [MetadataType(typeof(UserMetaData))]
    public partial class User
    {
        public string ConfirmPassword { get; set; }
    }
    public class UserMetaData
    {
        [Required(AllowEmptyStrings = false, ErrorMessage ="Primer Nombre requerido")]
        [Display(Name ="Nombre")]
        public string FirstName { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "Apellido Requerido")]
        [Display(Name = "Apellido")]
        public string LastName { get; set; }

        [Display(Name = "Correo")]
        [Required(AllowEmptyStrings = false, ErrorMessage = "Correo Requerido")]
        [DataType(DataType.EmailAddress)]
        public string EmailID { get; set; }

        [Display(Name = "Fecha Nacimiento")]
        [DataType(DataType.Date)]
        [DisplayFormat(ApplyFormatInEditMode =true, DataFormatString ="{0:MM-dd-yyyy}")]
        public DateTime DateOfBirth { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "Contraseña requerida")]
        [DataType(DataType.Password)]
        [MinLength(6, ErrorMessage ="Password must be minimum of 6 characters")]
        public string Password { get; set; }

        [Display(Name ="Confirmar")]
        [Required(AllowEmptyStrings = false, ErrorMessage = "Contraseña requerida")]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage ="Passwoords do not match")]
        public string ConfirmPassword { get; set; }


    }
}