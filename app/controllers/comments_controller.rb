class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @thread = ForumThread.find(params[:forum_thread_id])
    @comment = @thread.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @thread, notice: 'Successfully added new comment'
    else
      redirect_to @thread, alert: "Couldn't save comment"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
