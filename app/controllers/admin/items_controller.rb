class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_item_path(@item.id)
  end

  def show
    @item = Item.find(params[:id])
    @price = @item.price
  end

  def edit
  end

  def update
  end


  private

  def item_params
    params.require(:item).permit(:imgae, :name, :introduction, :price)
  end

end
