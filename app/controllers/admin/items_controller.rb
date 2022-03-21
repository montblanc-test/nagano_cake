class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def show
  end

  def index
    @items = Item.page(params[:page]).per(10)
  end

  def edit
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
  end

  private

  def item_params
    params.require(:item).permit(:name,:price,:is_status,:image)
  end

end
