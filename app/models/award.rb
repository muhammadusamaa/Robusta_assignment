class Award < ApplicationRecord
  has_many :movies
  has_many :actors
  has_many :directors
end
