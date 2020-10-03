class CreateDirectorAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :director_awards do |t|
      t.integer :director_id
      t.integer :award_id
      t.timestamps
    end
  end
end
