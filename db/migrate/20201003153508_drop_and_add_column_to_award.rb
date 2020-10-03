class DropAndAddColumnToAward < ActiveRecord::Migration[5.2]
  def change
    add_column :awards, :name, :string
    add_reference  :awards, :awardable, polymorphic: true
    remove_column :awards, :number_of_awards, :integer
  end
end
