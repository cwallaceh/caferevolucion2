class ApplicationController < ActionController::Base

  before_filter :configure_permitted_parameters, if: :devise_controller?
 
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
 
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username,
        :email, :password, :password_confirmation, :avatar, :provider, :uid, :name)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:username,
        :email, :password, :password_confirmation, :current_password, :avatar, :avatar, :provider, :uid, :name)
    end
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
