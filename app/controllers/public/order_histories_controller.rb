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
    cart_items = current_customer.cart_items
      cart_items.each do |cart|
        order_detail = OrderDetail.new
        order_detail.order_history_id = @order_history.id
        order_detail.item_id = cart.item.id
        order_detail.quantity = cart.amount
        order_detail.price = cart.item.price
        order_detail.save
      end
    redirect_to public_order_histories_done_path
    cart_items.destroy_all
  end

  def index
    @order_history = OrderHistory.all
  end

  def show
    @order_history = OrderHistory.find(params[:id])
    @postage = 800
  end

  private

  def order_history_params
      params.require(:order_history).permit(:customer_id, :postal_code, :address, :address_name, :postage, :payment_amount, :method_of_payment)
  end

end
