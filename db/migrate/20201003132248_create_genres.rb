class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :movie_genre
      t.timestamps
    end
  end
end
