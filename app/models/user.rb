class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :products

   validates :password, length: { in: 4..20 }

end
