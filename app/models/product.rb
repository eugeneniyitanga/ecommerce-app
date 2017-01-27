class Product < ApplicationRecord
  def tax 
    return price.to_i * 0.09
  end 
end
