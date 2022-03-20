class Public::CustomersController < ApplicationController
  before_action :authenticate_end_user!, except: [:top, :about]


  def show
    @customer = Customer.find(params[:id])
    @customer_name = Customer.select('family_name','first_name')
    @customer_name_kana = Customer.select('family_name_kana','first_name_kana')
  end

  def edit
  end

  def unsubscribe
  end

  def withdraw
  end

  def update
  end

  private

  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :post_code, :address, :telephone_number, :email, :is_deleted)
  end



end
