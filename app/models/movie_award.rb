class MovieAward < ApplicationRecord
belongs_to :movie
belongs_to :award
validates :award_id, uniqueness: { scope: :movie_id }
validates_presence_of :movie_id, :award_id
end
