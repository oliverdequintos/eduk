class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :date_of_birth, :gender, :contact_no, :is_admin, :is_teacher, :email, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :date_of_birth, :gender, :contact_no, :is_admin, :is_teacher, :email])

      # This is the how you permit params in sign in for additional authentication field
      # devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :some_require_field])
    end
end
