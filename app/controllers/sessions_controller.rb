class SessionsController < ApplicationController
  def create
    
    @user = User.find(name: params[:user][:name]
    if @user.authenticate(params[:user][:password])
end
  
end
