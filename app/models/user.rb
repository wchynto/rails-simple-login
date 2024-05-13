class User < ApplicationRecord
  has_secure_password :password, validations: true
  validates :name, presence: true, uniqueness: true

  def current_user
    @current_user || session[:user_id] && User.find_by(id: session[:user_id])
  end
end
