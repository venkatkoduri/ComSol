using Freewheels.App.Interfaces;
using Freewheels.App.Model;
using Freewheels.App.Model.DataContext;
using Freewheels.App.Model.Dto;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Freewheels.App.Logic
{
    public class MovieLogic : IMovie
    {
        private readonly MovieDataContext _context;
        public MovieLogic(MovieDataContext context)
        {
            _context = context;
        }
        public async Task<bool> AddorUpdateRatingtoaMovie(RatingDto ratingDto)
        {
            try
            {
                var currentRatingInfo = await (from movies in _context.Moviess
                                               join rating in _context.Ratings on
                                               movies.MovieId equals rating.MovieId
                                               join user in _context.Users on
                                               rating.UserId equals user.UserId
                                               where user.FirstName == ratingDto.UserName &&
                                               movies.Title == ratingDto.MovieName
                                               select new
                                               {
                                                   UserId = user.UserId,
                                                   MovieId = movies.MovieId
                                               }
                                      ).FirstOrDefaultAsync();

                if (currentRatingInfo != null)
                {
                    var getInfo = await _context.Ratings.FirstOrDefaultAsync(x => x.MovieId == currentRatingInfo.MovieId && x.UserId == currentRatingInfo.UserId);
                    getInfo.MovieRating = ratingDto.Rating;
                    _context.Ratings.Update(getInfo);
                    await _context.SaveChangesAsync();
                    return true;
                }
                else
                {
                    Rating rating = new Rating
                    {
                        MovieId = _context.Moviess.FirstOrDefault(x => x.Title == ratingDto.MovieName).MovieId,
                        UserId = _context.Users.FirstOrDefault(x => x.FirstName == ratingDto.UserName).UserId,
                        MovieRating = ratingDto.Rating,
                        CreatedBy = "Test",
                        CreatedDate = DateTime.Now,
                        UpdatedBy = "Test",
                        UpdateDate = DateTime.Now
                    };

                    _context.Ratings.Add(rating);
                    await _context.SaveChangesAsync();
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw;
            }

        }

        public async Task<List<Movies>> GetMoviesBySearchCriteria(SearchDto searchDto)
        {
            if (searchDto != null)
            {
                var result = await _context.Moviess.Where(x => x.Title.Contains(searchDto.Title) || x.Genre == searchDto.Genre || x.YearOfRelease == searchDto.Year).ToListAsync();
                
                if(result.Any())
                {
                    return result;
                }
                return null;
            }
            return null;
        }

        public async Task<List<MovieRatings>> GetMoviesBySpecificUserHighestRating(string userName)
        {
            try
            {
                var result = (from movies in _context.Moviess
                             join rating in _context.Ratings on
                             movies.MovieId equals rating.MovieId
                             join user in _context.Users on
                             rating.UserId equals user.UserId
                             where user.FirstName == userName
                                    select new MovieRatings
                                    {
                                        Id = movies.MovieId,
                                        Title = movies.Title,
                                        Rating = rating.MovieRating
                                    }).OrderByDescending(x => x.Rating).Take(5);

                return await result.OrderBy(x => x.Title).ToListAsync();
            }
            catch(Exception ex)
            {
                throw;
            }
        }

        public async Task<List<MovieRatings>> GetMoviesByTotalUserAverageRatings()
        {
            var result = from movies in _context.Moviess
                         join rating in _context.Ratings on
                         movies.MovieId equals rating.MovieId
                         group rating by new { rating.MovieId, movies.Title };
                         
           
            return await result.Select(x => new MovieRatings {
            Id = x.Key.MovieId,
            Title = x.Key.Title,
            Rating = Math.Round(x.Average(x => x.MovieRating))        
            }).OrderBy(x=> x.Title).Take(5).ToListAsync();

        }
    }
}
