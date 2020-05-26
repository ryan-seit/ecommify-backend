class OrderSerializer < ActiveModel::Serializer

  attributes :id, :total_amount, :user_id
  belongs_to :user

end
