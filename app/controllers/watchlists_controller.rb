class WatchlistsController < ApplicationController
  def creat
    @watchlist = Watchlist.create(movie_id: params[:movie_id], user_id: current_user.id)
  end

  def index
    @watchlist = current_user.movies
  end
end
