class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    case resource
      when Admin
        admins_homes_top_path
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
end
