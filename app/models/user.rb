class User < ApplicationRecord
  has_secure_password

  has_many :orders
  has_many :line_items, through: :orders
  has_many :products, through: :line_items

  # user validations
  validates :email, uniqueness: true

end
