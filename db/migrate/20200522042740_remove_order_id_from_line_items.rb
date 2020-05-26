class RemoveOrderIdFromLineItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :line_items, :order_id, :string
  end
end
