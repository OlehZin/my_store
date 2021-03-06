class ApplicationController < ActionController::Base
  
  protect_from_forgery
  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_admin!
    redirect_to :root unless current_user.role == "admin"
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:login])
    devise_parameter_sanitizer.permit(:account_upadate, keys: [:login])
  end
  
end
  