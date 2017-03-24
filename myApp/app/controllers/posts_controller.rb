class PostsController < ApplicationController

  def index
  @posts = Post.all
  end


  def show
  @post = Post.find(params[:id])
  @comments = Comment.all
   @comment = Comment.new

  end


  def new
    @post = Post.new
  end



  def create
  @post = Post.new(post_params)
  if @post.save
    redirect_to :root
  else
    render :new
  end

  end



  def edit

  end



  def update


  end


  def destroy

  end



private

  def post_params
    params.require(:post).permit(:post_text, :user)
  end



end
