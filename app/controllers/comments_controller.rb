class CommentsController < ActionController::Base
  def create
    head 403 and return unless current_user
    @thread = ForumThread.find params[:forum_thread_id]
    @comment = @thread.comments.build comment_params
    @comment.user = current_user
    if @comment.save
      redirect_to @thread
    else
      redirect_to :back
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
