class Computer < ActiveRecord::Base
	belongs_to :user
	attr_accessible :hostname, :ip, :os, :processor, :memory_ram, :hard_disk, :obs
end
