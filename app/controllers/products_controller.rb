class ProductsController < ApplicationController

  def index  
    @products = Product.all 
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
    redirect_to "/products/#{product.id}" 
    flash[:success] = "Product Created"
  end 

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.brand = params[:brand]
    product.price = params[:price]
    product.save
    flash[:ohh] = "Product Updated"
    redirect_to "/products/#{product.id}"
  end

  def destroy 
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.brand = params[:brand]
    product.price = params[:price]
    product.save
    flash[:warning] = "Product Deleted"
    redirect_to "/products/#{product.id}"
   end 
end
