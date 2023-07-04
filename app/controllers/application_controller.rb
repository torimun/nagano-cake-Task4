class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    case resource
      when Admin
        admin_homes_top_path
      when Costomer
        public_homes_top_path
    end
  end

  def after_sign_out_path_for(resource)
    case resource
      when Admin
        new_admin_session_path
      when Costomer
        new_customer_session_path
    end
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
    keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :encrypted_password])
  end
end