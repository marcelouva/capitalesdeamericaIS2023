class AgregaImgQuestion < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :img, :string

  end
end

