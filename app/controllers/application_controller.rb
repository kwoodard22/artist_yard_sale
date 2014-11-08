class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :username
      devise_parameter_sanitizer.for(:sign_up) << :name
      devise_parameter_sanitizer.for(:sign_up) << :address
      devise_parameter_sanitizer.for(:sign_up) << :bio
      devise_parameter_sanitizer.for(:sign_up) << :photo

      devise_parameter_sanitizer.for(:account_update) << :username
      devise_parameter_sanitizer.for(:account_update) << :name
      devise_parameter_sanitizer.for(:account_update) << :address
      devise_parameter_sanitizer.for(:account_update) << :bio
      devise_parameter_sanitizer.for(:account_update) << :photo

  end

  protect_from_forgery with: :exception
end
