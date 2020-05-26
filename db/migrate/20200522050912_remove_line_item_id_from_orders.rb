class RemoveLineItemIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :line_item_id, :string
  end
end
