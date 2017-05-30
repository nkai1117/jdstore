class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:creae]

  def create
    @order = Order.new(order_params)
    @order.user =current_user
    @order.total = current_cart.total_price

    if @order.save
      redirect_to order_path(@order)
    else
      render 'carts/checkout'
    end
  end

end
