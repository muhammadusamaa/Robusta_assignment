class Movie < ApplicationRecord
  has_many :movie_actors
  has_many :actors,  through: :movie_actors
  has_many :movie_genres
  has_many :genres,  through: :movie_genres
  has_many :awards, as: :awardable
  belongs_to :director

  mount_uploader :movie_image, MovieImageUploader
  ratyrate_rateable 'original_score'

  def self.search(search_name)
    return if search_name.empty?
    where('name LIKE ?', "%#{search_name}%")
  end
end
