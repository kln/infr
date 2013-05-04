class AddIndexUserComputers < ActiveRecord::Migration
  def up
    add_index :computers, :user_id
  end

  def down
    remove_index :computers, :user_id
  end
end
