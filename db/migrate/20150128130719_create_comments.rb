class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :user_id 
      t.integer :entry_id
      t.timestamps null: false
    end
    add_index "comments", ["user_id"], name: "index_comments_on_user_id"
    add_index "comments", ["entry_id"], name: "index_comments_on_entry_id"
  end
end
