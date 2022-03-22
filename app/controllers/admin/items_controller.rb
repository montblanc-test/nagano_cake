class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.page(params[:page]).per(10)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_item_path(@item), notice: "商品が新規登録されました"
    else
      render "new"
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.save
      redirect_to admin_item_path(@item), notice: "商品が編集されました"
    else
      render "edit"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name,:price,:is_status,:image,:introduction,:genre_id)
  end

end