class WatchlistsController < ApplicationController
  def create
    @watchlist = Watchlist.create!(movie_id: params[:movie_id], user_id: current_user.id)
    redirect_to action: 'index'
  end

  def index
    @watchlist = current_user.movies
  end
end
