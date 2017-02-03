class Product < ApplicationRecord
    belongs_to :supplier 
    has_many :images 
    belongs_to :user

  def tax 
    return price.to_i * 0.09
  end 
end
