class Movie < ApplicationRecord
  has_many :rates
  has_many :actors
  has_many :genre
  has_many :awards, as: :awardable
  belongs_to :director

  mount_uploader :movie_image, MovieImageUploader
end
