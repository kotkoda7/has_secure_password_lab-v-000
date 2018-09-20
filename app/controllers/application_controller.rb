class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  def welcome
    login?
  end
  
  private
  
  def login? 
    if session.inclode?(:user_id)
      render root_path
    else
      render 'sessions/login'
  end
end
