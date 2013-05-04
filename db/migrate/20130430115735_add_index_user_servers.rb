class AddIndexUserServers < ActiveRecord::Migration
  def up
    add_index :servers, :user_id
  end

  def down
    remove_index :servers, :user_id
  end
end
