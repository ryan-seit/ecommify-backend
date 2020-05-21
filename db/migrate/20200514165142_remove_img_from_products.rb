class RemoveImgFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :img, :string
  end
end
