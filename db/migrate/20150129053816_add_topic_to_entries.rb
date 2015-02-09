class AddTopicToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :topic, :string, :default => "", :null => false 
  end
end
