class OrderSerializer < ActiveModel::Serializer
  
  attributes :id, :total_amount, :user_id, :product_id

end
