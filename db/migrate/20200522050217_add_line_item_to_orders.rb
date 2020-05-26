class AddLineItemToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :line_item, null: true, foreign_key: true
  end
end
