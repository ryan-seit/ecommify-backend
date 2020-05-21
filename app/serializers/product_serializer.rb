class ProductSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :description, :price, :img_1, :img_2, :category

end
