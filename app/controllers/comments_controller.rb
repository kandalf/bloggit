class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])  
    flash[:notice] = t 'application.messages.comment_created_ok'
    redirect_to post_path(@post) 
  end
end
