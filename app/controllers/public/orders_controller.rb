class Public::OrdersController < ApplicationController
  def new
    @order_history = OrderHistory.new
    @customer = current_customer
  end

  def confirm
    @cart_items = CartItem.all
    @customer = current_customer
    @order_history = OrderHistory.method_of_payments
    @total = 0
    @postage = 800
  end

  def done

  end

  def create

  end

  def index

  end

  def show

  end

end
