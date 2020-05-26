class AddProductIdToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :product, null: false, foreign_key: true
  end
end
