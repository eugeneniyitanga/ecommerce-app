class OrdersController < ApplicationController

  def create
    user_id = params[:user_id]
    product_id = params[:product_id]
    quantity = params[:quantity]
    subtotal = params[:subtotal]
    tax = [:tax]
    total = total[:total]
    order = Order.new(user_id: user_id, product_id: product_id, quantity: quantity, subtotal: subtotal, tax: tax, total: total})
    order.save
    redirect_to "/orders/#{order.id}"
  end 
end
