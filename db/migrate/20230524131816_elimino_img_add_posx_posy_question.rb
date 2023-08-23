class EliminoImgAddPosxPosyQuestion < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :img, :string
    add_column :questions, :posx, :integer
    add_column :questions, :posy, :integer
  end
end
