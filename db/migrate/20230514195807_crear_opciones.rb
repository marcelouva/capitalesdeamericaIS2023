class CrearOpciones < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
     t.integer :option_id
     t.integer :question_id
     t.string :name

   
     t.timestamps
    end
  end
end
