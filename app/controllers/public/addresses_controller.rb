class Public::AddressesController < ApplicationController

  # def new
  #   @address = Address.new
  # end

  def index
    @address = Address.new
    @addresses = Address.all
  end

  def edit
    @address = Address.find(params[:id])
  end

  def create
    @address = Address.new(address_params)
    @address.customer_id = current_customer
    if @address.save
      redirect_to addresses_path(current_customer)
      flash[:notice]='You have created address successfully.'
    else
      @addresses = Address.all
      render :index
    end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to addresses_path
  end

  def update
  end

  private

  def address_params
    params.require(:address).permit(:post_code, :address, :name)
  end

end
