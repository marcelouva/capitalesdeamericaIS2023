class CrearPreguntas < ActiveRecord::Migration[7.0]
  def change
   create_table :questions do |t|
    t.integer :question_id
    t.integer :option_id
    t.string :name

   
    t.timestamps
  end
  end
end



