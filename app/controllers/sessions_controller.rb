class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.authenticate(params[:session][:email], params[:session][:password])
    session[:user_id] = user.id
    flash[:notice] = "HMMMMMMMMMMMMM"
    redirect_to user
  end

  def destroy
    session[:user_id] = nil 
    redirect_to root_path
  end
end
