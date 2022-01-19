using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Freewheels.App.Model
{
 [Table("Movies")]
 public class Movies
    {
        [Key]
        public int MovieId { get; set; }

        public string Title { get; set; }

        public string YearOfRelease { get; set; }

        public string Genre { get; set; }
    }
}
