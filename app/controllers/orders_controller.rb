class OrdersController < ApplicationController

  def index
    @order = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(orders_params)
    if @order.save
      redirect_to :index
    else
      redirect_to :new
    end
  end

  private

  def orders_params
    params.require(:order).permit(:product, :supplier)
  end
end