class Order < ApplicationRecord
  after_initialize :set_defaults

  # belongs_to :user
  has_many :line_items
  has_many :products, through: :line_items

  def set_defaults
    self.user_id ||= 1
  end

end