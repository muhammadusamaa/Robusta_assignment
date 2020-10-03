class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :name
      t.text :discription
      t.timestamps
    end
  end
end
