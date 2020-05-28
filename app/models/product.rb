class Product < ApplicationRecord

  has_many :line_items
  has_many :orders, through: :line_items

  # has_many :orders
  # has_many :users, through: :orders

end