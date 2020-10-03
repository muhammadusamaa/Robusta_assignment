class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.integer :number_of_awards
      t.timestamps
    end
  end
end
