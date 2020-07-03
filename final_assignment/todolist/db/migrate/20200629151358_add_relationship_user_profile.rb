class AddRelationshipUserProfile < ActiveRecord::Migration
  def up
    add_column :profiles, :user_id, :integer
    add_column :todo_lists, :user_id, :integer
    add_column :todo_items, :todo_list_id, :integer
  end
end
