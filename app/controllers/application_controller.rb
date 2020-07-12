class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  private
    def set_current_user
    @user = current_user
    end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(
        :sign_up, keys: [:name, :address, :image_id, :post_code, :phone_number])
    end
end
