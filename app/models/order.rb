class Order < ApplicationRecord
  # after_initialize :set_defaults

  has_many :line_items
  has_many :products, through: :line_items
  belongs_to :user
  # belongs_to :product

  # def set_defaults
  #   self.user_id ||= 1
  # end

end