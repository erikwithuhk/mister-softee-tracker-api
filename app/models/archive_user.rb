class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email
  validates :user_type, inclusion: {
    in: %w(admin user vendor),
    message: "%{user_type} is not a valid user type"
  }
end
