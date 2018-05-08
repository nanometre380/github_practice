class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    @comment.content = params[:content]
    @comment.post_id = params[:post_id]
    @comment.save
    
    redirect_to "/home/index"
  end

  def destroy
    destroy_comment = Comment.find(params[:comments_id])
    destroy_comment.destroy
    
    redirect_to "/home/index"
  end
end
