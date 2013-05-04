class User < ActiveRecord::Base
	devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

 	attr_accessible :username, :email, :password, :password_confirmation, :remember_me
 
    has_many :server
	has_many :computer
	has_many :equip

  	validates_presence_of :username, :password
  	validates_confirmation_of :password
  	validates_uniqueness_of :email
end
