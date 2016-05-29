class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # !!_!!
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:username, :email, :password, :password_confirmation,
        :remember_me, :avatar, :remove_avatar, :avatar_cache)
    end

    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:username, :email, :password, :password_confirmation, :current_password,
        :remember_me, :avatar, :remove_avatar, :avatar_cache)
    end
  end

# !!_!!
#  def configure_permitted_parameters
#    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password,
#      :password_confirmation, :remember_me, :avatar, :remove_avatar, :avatar_cache) }
#    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password,
#      :password_confirmation, :current_password, :avatar, :remove_avatar, :avatar_cache) }
#  end
end
