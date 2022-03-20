class Public::ItemsController < ApplicationController
  def show
  end


  def index
    @items = Item.page(params[:page])
  end



  private

  def item_params
    params.permit(:genre_id,:item_image,:name,:introduction,:is_status,:price)
  end

end