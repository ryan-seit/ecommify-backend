class RemoveProductIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :product_id, :string
  end
end
