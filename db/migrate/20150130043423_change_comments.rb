class ChangeComments < ActiveRecord::Migration
  def change
    add_column :comments, :parent_id, :integer,:default=>0, :null => false 
    add_index :comments, :parent_id, :unique => true
  end
end
