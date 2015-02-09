class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      
      t.string :body
      t.timestamps null: false
    end
    add_index "entries", ["user_id"], name: "index_entries_on_user_id"
  end
end
