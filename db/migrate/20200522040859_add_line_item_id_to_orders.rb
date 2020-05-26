class AddLineItemIdToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :line_item, null: false, foreign_key: true
  end
end
