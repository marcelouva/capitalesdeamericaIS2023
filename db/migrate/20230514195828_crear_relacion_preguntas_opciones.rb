class CrearRelacionPreguntasOpciones < ActiveRecord::Migration[7.0]
  def change
       create_table :question_options, id: false do |t|
      t.references :question, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true
    end
    add_index :question_options, [:question_id, :option_id], unique: true
  end
end
