class CreateCars < ActiveRecord::Migration[7.0]
  create_table :cars do |t|
    t.string :name

    t.timestamps
  end
end
