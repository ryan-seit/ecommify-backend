class Product < ApplicationRecord

  has_many :users, through: :orders

end
