class Admin::HomesController < ApplicationController
  def top
    @order_history = OrderHistory.all
  end
end
