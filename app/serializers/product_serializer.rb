class ProductSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :description, :price, :img

end
