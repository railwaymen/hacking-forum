class ForumThread < ActiveRecord::Base
  validates :title, presence: true

  has_many :comments
  has_many :users, through: :comments
end
