class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end
  def show
    @movie = Movie.find(params[:id])
    @actors = @movie.actors
    @director = @movie.director
    @awards = @movie.awards
  end
end
