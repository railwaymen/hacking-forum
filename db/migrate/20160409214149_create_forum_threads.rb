class CreateForumThreads < ActiveRecord::Migration
  def change
    create_table :forum_threads do |t|
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
