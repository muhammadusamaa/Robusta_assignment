class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :discription
      t.string :movie_image 
      t.timestamps
    end
  end
end
