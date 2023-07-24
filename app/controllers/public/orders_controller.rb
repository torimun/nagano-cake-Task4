class Public::OrdersController < ApplicationController
  def new
    @order_history = OrderHistory.new
    @customer = current_customer
  end

  def confirm

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
