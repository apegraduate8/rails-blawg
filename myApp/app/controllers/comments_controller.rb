class CommentsController < ApplicationController


def index
  @commentss = Comment.all
  end


  def show

  end


  def new
    @comment = Comment.new
  end



  def create
  @comment = Comment.new(comment_params)
  if @comment.save
    redirect_to :root
  else
    # render :new
  end

  end



  def edit

  end



  def update


  end


  def destroy

  end



private

  def comment_params
    params.require(:comment).permit(:user_name, :text)
  end






end
