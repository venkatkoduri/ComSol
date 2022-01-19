using Freewheels.App.Interfaces;
using Freewheels.App.Model.DataContext;
using Freewheels.App.Model.Dto;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FreeWheels.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MovieController : ControllerBase
    {

        private readonly ILogger<MovieController> _logger;

        private readonly MovieDataContext _context;

        private readonly IMovie _movie;

        public MovieController(ILogger<MovieController> logger, MovieDataContext context, IMovie movie)
        {
            _logger = logger;
            _context = context;
            _movie = movie;
        }

        [HttpGet]
        [Route("GetUsers")]
        public IActionResult GetUsers()
        {
            var allUsers = _context.Users.ToList();

            return Ok(allUsers);
        }

        [HttpPost]
        [Route("AddMovieRating")]
        public async Task<IActionResult> AddMovieRating([FromBody] RatingDto ratingDto)
        {
            if (ModelState.IsValid)
            {
                var isRatingAdded = await _movie.AddorUpdateRatingtoaMovie(ratingDto);

                if (!isRatingAdded)
                {
                    return NotFound();
                }
                return Ok();
            }
            return BadRequest();
        }

        [HttpGet]
        [Route("GetHighestRatingByUser")]
        public async Task<IActionResult> GetHighestRatingByUser([FromQuery] string userName)
        {
            if (!string.IsNullOrEmpty(userName))
            {
                var result = await _movie.GetMoviesBySpecificUserHighestRating(userName);

                if (!result.Any())
                {
                    return NotFound();
                }
                return Ok(result);
            }
            return BadRequest();
        }

        [HttpGet]
        [Route("GetAverageRatingForTotalUsers")]
        public async Task<IActionResult> GetAverageRatingForTotalUsers()
        {
            var result = await _movie.GetMoviesByTotalUserAverageRatings();
            if (!result.Any())
            {
                return NotFound();
            }

            return Ok(result);

        }

        [HttpGet]
        [Route("GetMoviesBySearchCriteria")]
        public async Task<IActionResult> GetMoviesBySearchCriteria([FromQuery] SearchDto searchDto)
        {
            if (searchDto != null)
            {
                var result = await _movie.GetMoviesBySearchCriteria(searchDto);

                if (result.Any())
                {
                    return Ok(result);
                }
                return NotFound();
            }
            return BadRequest();
        }
    }
}
