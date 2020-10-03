class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :user_rate
      t.timestamps
    end
  end
end
