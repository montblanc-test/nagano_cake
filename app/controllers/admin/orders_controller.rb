class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

  def update
    @order = Order.find(params[:id])
    @order_items = @order.order_items
    @order.update(order_params)
    @order_items.update_all(making_status: "waiting") if @order.order_status == "paid"
    redirect_to request.referer
  end

  private

  def order_params
    params.require(:order).permit(:order_status)
  end
end
