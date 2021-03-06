class ProductsController < ApplicationController
 before_action :authenticate_user!, except: [:index, :show, :search]

 before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index  
    if params[:sort]
      @products = Product.all.order(price: params[:sort])
    elsif params[:filter] 
      @products = Product.where("price > ?", 1000)
    elsif params[:category]
      @products = Category.find_by(name: params[:category]).products
    else 
      @products = Product.all
    end
  end 

  def show 
    @product = Product.find_by(id: params[:id])
    if params[:id] == "random"
      @product = Product.all.sample
    else 
      @product = Product.find_by(id: params[:id])
    end 
  end

  def new
    unless current_user
     flash[:message] = "Only signed in users can add products!"
     redirect_to "/signup" 

     if current_user && current_user.admin
      @suppliers = Supplier.all
    else
     flash[:danger] = "You've no permission!"
     redirect_to "/"
   end 
   end
  end 

  def search 
    search_query = params[:search_query]
    @products = Product.where("name ILIKE ? OR brand ILIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @products.empty?
      flash[:info] = "No #{search_query} found" 
    end 
    render :index
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
    @suppliers = Supplier.all 
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

    if @product.save 
      flash[:success] = "Product Updated"
      redirect_to "/products/#{@product.id}"
    else 
      @suppliers = Supplier.all 
      render :edit 
    end 
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
