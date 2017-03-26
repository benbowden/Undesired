class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #call the configured params
  before_action :configure_permitted_parameters, if: :devise_controller?


  

  def after_sign_in_path_for(resource)
  	static_dashboard_path
  end

  protected
  def configure_permitted_parameters
  		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:isFarmer, :email, :password, :password_confirmation, :rember_me)}
  		devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :password_confirmation, :rember_me)}
  		devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :rember_me)}
  end
end
