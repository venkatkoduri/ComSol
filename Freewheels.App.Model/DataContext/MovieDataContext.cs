using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.EntityFrameworkCore;

namespace Freewheels.App.Model.DataContext
{
  public class MovieDataContext: DbContext
    {
        public MovieDataContext(DbContextOptions<MovieDataContext> options) : base(options)
        {

        }

        public DbSet<User> Users { get; set; }

        public DbSet<Movies> Moviess { get; set; }

        public DbSet<Rating> Ratings { get; set; }
    }
}
