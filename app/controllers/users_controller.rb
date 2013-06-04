class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:error]
      redirect_to root_url
    end
  end

  def show
    @user = User.find(params[:id])
    @post = Post.new
  end

  def index
    "Hello World"
  end

end
