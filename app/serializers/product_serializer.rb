class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :img_1, :img_2, :category
  has_many :line_items, serializer: LineItemSerializer
  has_many :orders, serializer: OrderSerializer
end
