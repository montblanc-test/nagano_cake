class Public::ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new(params[:cart_item_params])
    @genres = Genre.all
    @customer=current_customer
  end

  def index
    @items = Item.page(params[:page]).per(8)
    @genres = Genre.all
  end

  private

  def item_params
    params.require(:item).permit(:item_image,:name,:introduction,:price,:is_status)
  end

  def cart_item_params
    params.require(:cart_item).permit(:item_id,:customer_id)
  end

end