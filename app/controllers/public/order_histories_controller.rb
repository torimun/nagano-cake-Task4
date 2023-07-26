class Public::OrderHistoriesController < ApplicationController
  def new
    @order_history = OrderHistory.new
    @customer = current_customer
  end

  def confirm
    @order_history = OrderHistory.new(order_history_params)
    @cart_items = CartItem.all
    @customer = current_customer
    @total = 0
    @postage = 800
  end

  def done

  end

  def create
    @order_history = OrderHistory.new(order_history_params)
    @order_history.save
    redirect_to public_order_histories_done
  end

  def index

  end

  def show

  end

  private

  def order_history_params
      params.require(:order_history).permit(:method_of_payment)
  end

end
