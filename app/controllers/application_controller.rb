class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  private        
  def authenticate      
    return if controller_name == "visitors"
    if !logged_in?
      flash[:alert] = "Must be logged in!"
      redirect_to login_path
    end 
  end 
end
