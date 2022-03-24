class Public::OrdersController < ApplicationController
  #注文情報入力画面で、宛先や住所を入力する
  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
    # @order_item = OrderItem.find_by(params[:order_id])
  end

  def index
    @orders = current_customer.orders.all
  end

  def confilm
    @order = Order.new(order_params)
    if params[:order][:payment_method] == "credit_card"
      @order.payment_method = "credit_card"
    else
      @order.payment_method = "transfer"
    end

    if params[:order][:address_number] == "1"
      @order.name = current_customer.full_name
      @order.address = current_customer.address
    elsif params[:order][:address_number] == "2"
      if Address.exists?(id: params[:order][:address_id])
        @address= Address.find(params[:order][:address_id])
        @order.address = @address.address
        @order.post_code = @address.post_code
        @order.name = @address.name
      else
         render :new
      end
    elsif params[:order][:address_number] == "3"
      address_new = current_customer.addresses.new(address_params)
      if address_new.save
        @order.address = address_new.address
        @order.post_code = address_new.post_code
        @order.name = address_new.name
      else
        render :new
      end
    end
    @cart_items = current_customer.cart_items.all
    @total = @cart_items.inject(0) { |sum,item| sum + item.sum_price }
    @shipping_cost = 800
    @order.total_payment = @total + @shipping_cost
  end

  def complete
  end

#購入を確定する(Orderに情報を保存)
  def create
    cart_items = current_customer.cart_items.all
    @order = current_customer.orders.new(order_params)
    @order.shipping_cost = 800
    @order.order_status = "waiting_deposit"
    @cart_items = current_customer.cart_items.all
    @total = @cart_items.inject(0) { |sum,item| sum + item.sum_price }
    @order.total_payment = (@total+ @order.shipping_cost)

    if @order.save
      cart_items.each do |cart|
        order_item = OrderItem.new
        order_item.item_id = cart.item_id
        order_item.order_id = @order.id
        order_item.quantity = cart.quantity
        order_item.price = cart.item.price
        order_item.save
      end
      redirect_to orders_complete_path
      cart_items.destroy_all #カートを空にする
    else
      @order = Order.new(order_params)
      render :new
    end
  end


  private
    def order_params
      params.require(:order).permit(:name, :address, :post_code, :payment_method, :total_payment, :shipping_cost, :order_status, :customer_id)
    end

    def address_params
      params.require(:address).permit(:name, :address, :post_code)
    end
end
