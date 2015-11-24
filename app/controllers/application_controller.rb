class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #in helpers/application_helper.rb
  #helper_method :resource, :resource_name, :devise_mapping
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :rank, :rxp, :squad_id, :is_leader) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :rank, :rxp, :squad_id, :is_leader) }
  end
  
end
