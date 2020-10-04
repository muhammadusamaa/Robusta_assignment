class Watchlist < ApplicationRecord
belongs_to :user
belongs_to :movie

validates :user_id, uniqueness: { scope: :movie_id }
validates_presence_of :movie_id, :user_id
end
