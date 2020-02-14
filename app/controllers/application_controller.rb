class ApplicationController < ActionController::Base

  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number, :company_name,
    :street_address, :city, :province, :postal_code, :country, :website, :business_size, :logo])
  end
end
