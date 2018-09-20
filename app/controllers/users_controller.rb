class UsersController < ApplicationController
  
  def new 
    @user = User.new
    
  end
    
  def create
    @user = User.new
    if session()
    
    render :new
  end
end
