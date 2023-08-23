class AddNumberToCars < ActiveRecord::Migration[7.0]
  def change
      add_column :cars, :number, :string

  end
end



