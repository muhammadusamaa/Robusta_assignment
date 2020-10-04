class Actor < ApplicationRecord
  has_many :movie_actors
  has_many :movies,  through: :movie_actors
 
  has_many :awards, as: :awardable


  def self.search(search_name)
    return if search_name.empty?
    where('name LIKE ?', "%#{search_name}%")
  end

end
