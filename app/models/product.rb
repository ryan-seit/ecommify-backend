class Product < ApplicationRecord
  belongs_to :category
  has_many :line_items
  has_many :orders, through: :line_items

  # Custom scope
  # def self.bras
  #   where(category: [id: 2])
  # end

  # scope :bras, -> { where(Category.name: "Bras") }
end