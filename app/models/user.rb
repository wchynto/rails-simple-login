class User < ApplicationRecord
  has_secure_password :password, validations: true
  validates :name, presence: true, uniqueness: true

end
