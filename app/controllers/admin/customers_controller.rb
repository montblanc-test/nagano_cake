class Admin::CustomersController < ApplicationController
  def show
  end

  def index
    @customers = Customer.all
    @customer_pages = Customer.page(params[:page])
  end

  def edit
  end

  def update
  end

  private

  def customer_params
    params.require(:customer).permit(:family_name,:first_name,:address,:is_deleted)
  end

end
