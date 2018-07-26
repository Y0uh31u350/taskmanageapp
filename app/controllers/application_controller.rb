class ApplicationController < ActionController::Base

before_filter :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters

  devise_parameter_sanitizer.for(:sign_up){|u|
      u.permit(:user_id, :password, :password_confirmation)
  }
  devise_parameter_sanitizer.for(:sign_in){|u|
      u.permit(:user_id, :password, :remenber_me)
  }
end
end
