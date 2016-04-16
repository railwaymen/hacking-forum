class ForumThread < ActiveRecord::Base
  validates :title, presence: true
end
