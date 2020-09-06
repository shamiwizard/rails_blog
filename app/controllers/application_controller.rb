class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:username, :email, :first_name, :last_name, :password, :password_confirmation)
    end

    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:username, :password, :remember_me)
    end
  end
end
