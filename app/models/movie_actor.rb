class MovieActor < ApplicationRecord
  belongs_to :movie
  belongs_to :actor
  validates :actor_id, uniqueness: { scope: :movie_id }
  validates_presence_of :movie_id, :actor_id
end
