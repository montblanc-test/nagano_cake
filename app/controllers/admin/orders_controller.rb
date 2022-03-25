class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
    @shipping_cost = 800
  end

  def update
    @order = Order.find(params[:id])
    @order_items = @order.order_items
   if @order.update(order_params)
    if params[:order][:order_status] == "confirm_deposit"
     @order_items.each do |order_item|
       order_item.making_status = "wait"
       order_item.save
     end
    end
    redirect_to admin_order_path(@order)
   else
    render :show
   end
  end

  private

  def order_params
    params.require(:order).permit(:order_status)
  end
end
