class Equip < ActiveRecord::Base
	belongs_to :user
  	attr_accessible :location_equip, :model_equip, :type_equip
end
