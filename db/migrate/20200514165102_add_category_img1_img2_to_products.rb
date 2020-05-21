class AddCategoryImg1Img2ToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :category, :string
    add_column :products, :img_1, :string
    add_column :products, :img_2, :string
  end
end
