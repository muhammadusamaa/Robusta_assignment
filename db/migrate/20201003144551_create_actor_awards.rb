class CreateActorAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :actor_awards do |t|
      t.integer :actor_id
      t.integer :award_id
      t.timestamps
    end
  end
end
