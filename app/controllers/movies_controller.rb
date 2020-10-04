class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end
  def show
    @movie = Movie.includes(:actors, :director, :awards).find(params[:id])
    @actors = @movie.actors
    @director = @movie.director
    @awards = @movie.awards
  end
  def search
    @movies = []
    if params[:search].present?
      movies_search = Movie.search(params[:search])
      actors = Actor.includes(movie_actor: :movies).search(params[:search])
      @movies << movies_search unless movies_search.empty?
      actors.each { |actor| @movies << actor.movies }
      @movies = @movies.flatten.uniq      
    end
    redirect_to search_movies_path
  end
end
