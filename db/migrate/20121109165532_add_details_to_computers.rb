## add clumn table / colunm / type
class AddDetailsToComputers < ActiveRecord::Migration
  def change
  	add_column :computers, :processor, :string
  	add_column :computers, :memory_ram, :string
  	add_column :computers, :hard_disk, :string
  	add_column :computers, :os, :string
  	add_column :computers, :obs, :text
  	
  end
end
	