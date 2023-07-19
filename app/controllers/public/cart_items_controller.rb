class Public::CartItemsController < ApplicationController
  def index
    @cart_item = CartItem.all
  end

  def update

  end

  def destroy

  end

  def destroy_all

  end

  def create
    binding.pry
    @item = Item.find(cart_item_params[:item_id])
  end

  private

  def cart_item_params
      params.require(:cart_item).permit(:item_id, :amount)
  end

end
