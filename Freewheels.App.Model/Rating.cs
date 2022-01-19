using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Freewheels.App.Model
{
  [Table("Rating")]
  public class Rating
    {
        [Key]
        public int Id { get; set; }

        public decimal MovieRating { get; set; }

        public int MovieId { get; set; }

        public int UserId { get; set; }

        public string CreatedBy { get; set; }

        public DateTime CreatedDate { get; set; }

        public string UpdatedBy { get; set; }

        public DateTime UpdateDate{ get; set; }

    }
}
