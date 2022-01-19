using Freewheels.App.Model;
using Freewheels.App.Model.Dto;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Freewheels.App.Interfaces
{
    public interface IMovie
    {
        Task<List<Movies>> GetMoviesBySearchCriteria(SearchDto searchDto);

        Task<List<MovieRatings>> GetMoviesByTotalUserAverageRatings();

        Task<List<MovieRatings>> GetMoviesBySpecificUserHighestRating(string userName);

        Task<bool> AddorUpdateRatingtoaMovie(RatingDto ratingDto);


    }
}
