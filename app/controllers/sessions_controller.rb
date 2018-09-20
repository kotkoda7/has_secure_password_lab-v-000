class SessionsController < ApplicationController
  def create
    
    @user = User.find(name: params[:user][:name]
    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:message]= "incorrect login"
end
  
end
