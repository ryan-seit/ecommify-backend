class OrderSerializer < ActiveModel::Serializer

  attributes :id, :total_amount, :user_id, :line_items
  belongs_to :user
  has_many :line_items

  def line_items
    self.object.line_items.map do |line_item|
      {id: line_item.id,
      product_name: line_item.product.name
      }
    end
  end
end
