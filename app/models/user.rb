class User < ApplicationRecord
  
  has_secure_password

  # user validations
  validates :fullname, presence: true
  validates :fullname, uniqueness: { case_sensitive: false }
  validates :fullname, length: { minimum: 4 }
  validates :email, presence: true
  validates :email, uniqueness: true

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
