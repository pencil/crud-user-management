class User < ActiveRecord::Base
  validates :login, presence: true, uniqueness: true

  attr_accessible :login
  has_secure_password

  def to_s
    "#{login} (#{to_param})"
  end
end
