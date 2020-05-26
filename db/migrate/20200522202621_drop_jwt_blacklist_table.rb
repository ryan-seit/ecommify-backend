class DropJwtBlacklistTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :jwt_blacklist do |t|
      t.string :jti, null: false
    end
  end
end
