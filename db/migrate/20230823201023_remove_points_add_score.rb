class RemovePointsAddScore < ActiveRecord::Migration[7.0]
  def change
     remove_column :users, :points, :integer
    add_column :users, :score, :integer
   end
end
