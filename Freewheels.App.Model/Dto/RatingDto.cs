using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Freewheels.App.Model.Dto
{
 public class RatingDto
    {
        [Required]
        public string MovieName { get; set; }

        [Required]
        public string UserName { get; set; }

        [Required]
        public decimal Rating { get; set; }
    }
}
