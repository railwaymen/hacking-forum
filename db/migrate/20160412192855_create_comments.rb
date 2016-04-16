class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :forum_thread, index: true, foreign_key: true
      t.text :content
      t.belongs_to :user, index: true, foreign_key: true
    end
  end
end
