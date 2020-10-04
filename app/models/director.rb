class Director < ApplicationRecord
  has_many :movies
  has_many :awards, as: :awardable
  validates_presence_of :name

end
