using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace WebFormSendMessage.Models
{
    public class MessageBox
    {
        [Required(ErrorMessage = "Empty")]
        [EmailAddress(ErrorMessage = "Incorrect")]
        public string Email { get; set; }

        [Required]
        public string Message { get; set; }
    }
}