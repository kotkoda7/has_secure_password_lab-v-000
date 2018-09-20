class UsersController < ApplicationController
  
  def new 
    @user = User.new
    
  end
    
  def create
    @user = User.new
    if @user.save 
      session(:user_id) = user.id
    
    render :new
  end
end
