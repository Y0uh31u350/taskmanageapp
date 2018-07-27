class ApplicationController < ActionController::Base


protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
     user_params.permit(:username, :password, :password_confirmation)
  end
  devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:user_id, :password, :remenber_me)
  end
end

end
