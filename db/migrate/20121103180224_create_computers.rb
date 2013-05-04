class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
		t.string :hostname, null:false
        t.string :ip
        t.belongs_to :user, null: false
		t.timestamps
    end
  end
end
