class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :password, :email, :password_confirmation, :remember_me])
       devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :username, :password, :email, :remember_me])
       devise_parameter_sanitizer.permit(:account_update, keys: [:username, :password, :phone, :email, :password_confirmation, :current_password])
    end
end
