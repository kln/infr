class Server < ActiveRecord::Base
	belongs_to :user
  	attr_accessible :description, :hostname, :ip, :os
end
