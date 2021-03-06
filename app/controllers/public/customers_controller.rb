class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!, except: [:top, :about]

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def unsubscribe
    @customer = current_customer
  end

  def withdraw
    customer = Customer.find(params[:id])
    customer.update(is_deleted:true)
    reset_session
    redirect_to root_path
  end

  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
    redirect_to customer_path(current_customer.id)
  end

  private

  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :post_code, :address, :telephone_number, :email, :is_deleted)
  end

end
