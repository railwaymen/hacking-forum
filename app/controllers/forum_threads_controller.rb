class ForumThreadsController < ActionController::Base
  def show 
    @thread = ForumThread.find params[:id]
  end
end
