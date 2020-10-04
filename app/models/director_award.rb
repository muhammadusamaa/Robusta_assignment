class DirectorAward < ApplicationRecord
belongs_to :director
belongs_to :award
validates :director_id, uniqueness: { scope: :award_id }
validates_presence_of :award_id, :director_id
end
