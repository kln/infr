class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
        t.text :description
        t.string :hostname, null:false
        t.string :ip
        t.string :os
        t.belongs_to :user, null: false
		    t.timestamps
    end
  end
end
