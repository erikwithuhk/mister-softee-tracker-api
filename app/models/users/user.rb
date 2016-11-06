class User < ApplicationRecord
  validates_presence_of :email
  validates_uniqueness_of :email, message: "That email has already been registered"
  validates :email,
            format: {
              with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
              message: "Not a valid email address"
            }

  has_secure_password

  validates_presence_of :type
  validates_inclusion_of :type, in: %w( Customer Vendor ),
                                message: "[%{value}] is not a valid user type"

  def self.find_by_credentials(credentials)
    user = find_by_email(credentials[:email])
    user && user.authenticate(credentials[:password]) ? user : nil
  end
end
