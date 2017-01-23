class ProductsController < ApplicationController

  def index  
    @all_products = Product.all 
    render "index.html"
  end 

  def show 
  @product = Product.find_by(id: params[:id]) 
  render "show.html.erb"
  end

  def new 
  end 

  def create 
    name = params[:name]
    brand = params[:brand]
    price = params[:price]
    product = Product.new({name: name, brand: brand, price: price})
    product.save 
  end 
end
