class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
   before_action :set_search


  def after_sign_in_path_for(resource)
   if current_admin
      admin_orders_path
   elsif current_customer
        root_path
   end
  end

  def after_sign_out_path_for(resource)
        root_path
  end

  def set_search
    @search = Item.ransack(params[:q])
    @search_items = @search.result
  end

 protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up,keys: [:family_name, :first_name, :family_name_kana, :first_name_kana, :post_code, :address, :telephone_number, :email, :is_deleted])
  devise_parameter_sanitizer.permit(:account_update,keys: [:family_name, :first_name, :family_name_kana, :first_name_kana, :post_code, :address, :telephone_number, :email, :is_deleted])
 end

end
