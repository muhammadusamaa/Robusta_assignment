class ActorAward < ApplicationRecord
belongs_to :actor
belongs_to :award
validates :actor_id, uniqueness: { scope: :award_id }
validates_presence_of :actor_id, :award_id
end
