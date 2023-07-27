class Admin::OrdersController < ApplicationController
  def show
    @order_history = OrderHistory.find(params[:id])
    @postage = 800
  end
end
