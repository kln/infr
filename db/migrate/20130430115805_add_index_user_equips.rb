class AddIndexUserEquips < ActiveRecord::Migration
  def up
    add_index :equips, :user_id
  end

  def down
    remove_index :equips, :user_id
  end
end
