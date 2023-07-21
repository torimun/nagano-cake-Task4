class Public::CartItemsController < ApplicationController
  def index
    @cart_item = CartItem.all
  end

  def update
    @cart_item = CartItem.find(cart_item_params[:id])
  end

  def destroy

  end

  def destroy_all

  end

  def create
    @item = Item.find(cart_item_params[:item_id])
    @item.save
    redirect_to public_cart_items_index_path
  end

  private

  def cart_item_params
      params.require(:cart_item).permit(:item_id, :amount)
  end

end
