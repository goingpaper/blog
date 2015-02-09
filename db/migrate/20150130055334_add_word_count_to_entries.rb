class AddWordCountToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :word_count, :integer,:default=>0, :null => false 
  end
end
