class Public::CartItemsController < ApplicationController

  def index
    @cart_items = current_customer.cart_items.all
  # @total = @cart_items.inject(0) { |sum, item| sum + subtotal }
  end

  def create
    @cart_item = CartItem.new(cart_params)
    @cart_item.save
    redirect_to  cart_items_path
  end

  def destroy
    @cart_items = CartItem.find(params[:id])
    @cart_items.destroy
    redirect_to  cart_items_path
  end

  def destroy_all
    cart_items = CartItem.all
    cart_items.destroy_all
    redirect_to  cart_items_path
  end

  def update
   @cart_items = CartItem.find(params[:id])
   @cart_items.update(cart_params)
   redirect_to  cart_items_path
  end

  def cart_params
    params.require(:cart_item).permit(:quantity,:item_id,:customer_id)
  end


end
