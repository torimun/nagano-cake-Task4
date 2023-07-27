class Admin::HomesController < ApplicationController
  def top
    @order_history = OrderHistory.page(params[:page]).per(4)
  end
end
