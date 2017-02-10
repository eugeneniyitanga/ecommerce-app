class CartedProductsController < ApplicationController

  before_action :authenticate_user!

  def index 
    orders = Order.where("user_id = ? AND completed = ?", current_user.id, false)
    @carts = CartedProduct.where(order_id:orders.first.id)
    @order = current_user.orders.find_by(completed: false)
    unless @order
    flash[:warning] = "You don't have any products in your shopping cart"
    redirect_to "/"
    end 
  end 

  def create 
    orders = Order.where("user_id = ? AND completed = ?", current_user.id, false)
    if orders.first
      order = orders.first 

    else 
    order = Order.new(user_id: current_user.id, completed: false)
    order.save 
    end 

  cart = CartedProduct.new(order_id: order.id, product_id:params[:product_id], quantity:params[:quantity])
  cart.save
  redirect_to "/carted_products"
  end 

  def destroy
    cart = CartedProduct.find_by(id: params[:id])
    cart.destroy
    flash[:warning] = "Product removed from shopping cart"
    redirect_to "/carted_products"
  end
end

