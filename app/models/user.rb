class User < ActiveRecord::Base
  validates :login, presence: true, uniqueness: true

  attr_accessible :login
  has_secure_password
end
