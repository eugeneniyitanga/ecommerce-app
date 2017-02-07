class OrdersController < ApplicationController

  
    def create
      order = Order.find_by(id: params[:id])   
      product_id = params[:product_id]
      quantity = params[:quantity].to_i
      subtotal = quantity * product.price
      tax = quantity * product.tax 
      total = subtotal + tax 
      order = Order.new({user_id: current_user.id, product_id: product_id, quantity: quantity, subtotal: subtotal, tax: tax, total: total})
      if order.save
        flash[:Success] = "Product Ordered!"
        redirect_to "/orders/#{order.id}"
      else 
        flash[:danger] = "Product not ordered"
        redirect_to "/product/#{product.id}"
      end 
    end 

  def show 
    
    @order = Order.find_by(id: params[:id])
    
  end 
end
