class User < ApplicationRecord
  has_secure_password

  has_many :orders

  # user validations
  validates :email, uniqueness: true

end
