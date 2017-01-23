class ProductsController < ApplicationController

  def index  
    @all_products = Product.all 
    render "index.html"
  end 
end
