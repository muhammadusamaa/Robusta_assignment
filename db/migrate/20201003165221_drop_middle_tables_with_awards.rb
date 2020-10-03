class DropMiddleTablesWithAwards < ActiveRecord::Migration[5.2]
  def change
    drop_table :actor_awards
    drop_table :director_awards
    drop_table :movie_awards
  end
end
