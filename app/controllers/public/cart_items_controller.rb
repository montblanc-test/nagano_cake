class Public::CartItemsController < ApplicationController

  def index
    @cart_items = current_customer.cart_items.all
  # @total = @cart_items.inject(0) { |sum, item| sum + subtotal }
  end

  def create
     cart_item = current_customer.cart_items.new(cart_params)                                                                   #新しく客がカートに登録した商品をcart_itemとする。
     if current_customer.cart_items.exists?(item_id: cart_item.item_id)                                                         #もし、cart_itemのitem_idが、客のカート内のcart_itemsテーブル内に存在していたら
        add_items = current_customer.cart_items.find_by(item_id: params[:cart_item][:item_id])                                  #客のcart_itemsテーブル内から、特定の[:cart_item][:item_id]であるものを選んで add_itemsという名前で保存
        add_items.quantity += params[:cart_item][:quantity].to_i                                                                # add_itemsのquantity
        add_items.save
        redirect_to  cart_items_path
     else
       cart_item = CartItem.new(cart_params)
       cart_item.save
       redirect_to  cart_items_path
     end
  end

  def destroy
    @cart_items = CartItem.find(params[:id])
    @cart_items.destroy
    redirect_to  cart_items_path
  end

  def destroy_all
    cart_items = current_customer.cart_items.all
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
