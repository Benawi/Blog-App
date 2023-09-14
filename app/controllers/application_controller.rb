class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # The current_user function returns the first user object and assigns it
  # to the instance variable @current_user if it is not already assigned.
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_out_path_for(_resource_or_scope)
    # Replace '/your_custom_path' with the path you want to redirect to after sign-out
    '/users/sign_in'
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name bio photo email password password_confirmation])
  end
end
