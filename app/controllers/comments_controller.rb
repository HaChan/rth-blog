class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params.merge(user: current_user))
    @comment.save!
  end

  private
  def comment_params
    params.require(:comment).permit(Comment::UPDATE_PARAMS)
  end
end
