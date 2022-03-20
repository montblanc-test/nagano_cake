class Admin::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end

  def index
    @customers = Customer.page(params[:page]).per(5)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
  end

  private

  def customer_params
    params.require(:customer).permit(:family_name,:first_name,:family_name_kana,:first_name_kana,:post_code,:address,:telephone_number,:is_deleted)
  end

end
