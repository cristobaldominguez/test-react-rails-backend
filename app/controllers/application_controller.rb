class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_user

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name avatar])
  end

  private

  def set_current_user
    CurrentUser.data = current_user
  end
end
