class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :qty, :order_id, :products
  has_many :products
  
  def products
    self.object.products.map do |product|
      {id: product.id,
        name: product.name, 
        price: product.price,
        img_1: product.img_1}
    end 
  end
end