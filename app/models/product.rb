class Product < ApplicationRecord
    belongs_to :supplier 
    has_many :images 
    belongs_to :user
    has_many :carted_products 
    has_many :orders, through: :carted_products  
    has_many :category_products
    has_many :categories, through: :category_products

  def tax 
    return price.to_i * 0.09
  end 
end
