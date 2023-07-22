class Public::CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
    @total = 0
  end

  def update
    @cart_item =  CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to public_cart_items_index_path
  end

  def destroy
    @cart_item =  CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to public_cart_items_index_path
  end

  def destroy_all
    @cart_items = CartItem.all
    @cart_items.destroy_all
    redirect_to public_cart_items_index_path
  end

  def create
    cart_item = CartItem.find_by(item_id: params[:cart_item][:item_id], customer_id: current_customer.id)
    if cart_item.nil?
      @cart_item = CartItem.new(cart_item_params)
      @cart_item.customer_id = current_customer.id
      @cart_item.save
    else
      cart_item.amount+=params[:cart_item][:amount].to_i
      cart_item.save
    end
    redirect_to public_cart_items_index_path
  end

  private

  def cart_item_params
      params.require(:cart_item).permit(:item_id, :amount)
  end

end
