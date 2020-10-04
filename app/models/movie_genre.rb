class MovieGenre < ApplicationRecord
belongs_to :movie
belongs_to :genre
validates :genre_id, uniqueness: { scope: :movie_id }
validates_presence_of :movie_id, :genre_id
end
