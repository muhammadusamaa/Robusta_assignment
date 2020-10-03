class Model < ApplicationRecord
  has_many :rates
  has_many :actors
  has_many :genre
  has_many :awards
  has_one :director
end
