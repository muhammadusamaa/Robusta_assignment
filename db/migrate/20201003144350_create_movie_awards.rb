class CreateMovieAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_awards do |t|
      t.integer :movie_id
      t.integer :award_id
      t.timestamps
    end
  end
end
