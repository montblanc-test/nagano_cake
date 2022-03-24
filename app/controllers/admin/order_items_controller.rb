class Admin::OrderItemsController < ApplicationController
  def update
    @order_item = OrderItem.find(params[:id])
    if @order_item.update(order_item_params)
      if params[:order_item][:making_status] == "in_production"
        @order_item.order.order_status = "in_production"
        @order_item.order.save
      elsif @order_item.order.order_items.count == @order_item.order.order_items.where(making_status: "finish").count
        @order_item.order.order_status = "ready_ship"
        @order_item.order.save
      end
    end
    redirect_to admin_order_path(@order_item.order)
  end

  private
  def order_item_params
    params.require(:order_item).permit(:making_status)
  end
end