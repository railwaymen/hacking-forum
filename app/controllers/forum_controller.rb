class ForumController < ApplicationController
  def index
    @threads = ForumThread.order(updated_at: :desc)
  end
end
