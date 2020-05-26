class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :qty, :product_id, :order_id
end
