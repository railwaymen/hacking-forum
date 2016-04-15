class Comment < ActiveRecord::Base
  belongs_to :forum_thread, required: true
  belongs_to :user, required: true

  validates :content, presence: true
end
