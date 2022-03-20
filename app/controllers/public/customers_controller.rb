class Public::CustomersController < ApplicationController

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




end
