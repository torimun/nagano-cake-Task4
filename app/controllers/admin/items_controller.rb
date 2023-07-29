class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all.page(params[:page]).per(10)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    #外部キーのidは自動で作成されないので、自身で以下の様に追加する必要がある
    #今回の様にNOT NULL等言われたら、追加してあげれば大抵は問題ない
    @item.admin_id = current_admin.id
    #item_paramsで情報の取得、saveでidを作成している
    @item.save
    redirect_to admin_item_path(@item.id)
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_item_path(@item.id)
  end


  private

  def item_params
    params.require(:item).permit(:image, :name, :introduction, :price)
  end

end
