class CrearAnswers < ActiveRecord::Migration[7.0]
  def change
  
  create_table :answers, id: false do |t|
  t.integer :user_id, null: false
  t.integer :question_id, null: false
  t.integer :option_id, null: false
  t.integer :answer_id, null: false, auto_increment: true, primary_key: true
  t.timestamps
end
add_index :answers, [:user_id, :question_id, :option_id], unique: false
  
  
  end
end

