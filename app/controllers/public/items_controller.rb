class Public::ItemsController < ApplicationController
  def show
  end


  def index
    @items = Item.all.(params[:page])
    @genres = Genre.all
  end



  private

  def item_params
    params.permit(:genre_id,:item_image,:name,:introduction,:is_status,:price)
  end

end