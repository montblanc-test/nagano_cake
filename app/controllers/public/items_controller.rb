class Public::ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
    @genres = Genre.all
    @customer=current_customer
  end

  def index
    @items = Item.page(params[:page]).per(8)
    @genres = Genre.all
  end

  private

  def item_params
    params.permit(:genre_id,:item_image,:name,:introduction,:is_status,:price)
  end

end