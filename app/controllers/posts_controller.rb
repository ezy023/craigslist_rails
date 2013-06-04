class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.create(:title => params[:post][:title], :content => params[:post][:content], :category => Category.find_or_create_by_name(params[:post][:category]), :user => current_user )
    if @post.save
      flash[:success] = "Ball so Hard"
      redirect_to @user 
    end
  end

  def show 
    @post = Post.find(params[:id])
  end
end
