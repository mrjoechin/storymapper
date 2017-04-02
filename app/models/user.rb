class User < ActiveRecord::Base
  has_many :storymaps
  has_secure_password

end
