class ProductsController < ApplicationController
  def all_products 
    @all_products = Product.all 
    render "all_products.html"
  end 
end
