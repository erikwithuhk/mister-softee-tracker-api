class User < ApplicationRecord
  has_secure_password

  validates_presence_of :email
  validates_presence_of :password
  validates_presence_of :type
  # TODO validate password pattern

  def self.find_by_credentials(credentials)
    user = find_by_email(credentials[:email])
    user && user.authenticate(credentials[:password]) ? user : nil
  end
end
