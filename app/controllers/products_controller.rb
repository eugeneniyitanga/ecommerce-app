class ProductsController < ApplicationController

  def index  
    @all_products = Product.all 
    render "index.html"
  end 

  def show 
  @product = Product.find_by(id: params[:id]) 
  render "show.html.erb"
  end
end
