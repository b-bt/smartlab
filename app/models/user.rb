class User < ApplicationRecord
	has_many :accesses
	has_many :desks, through: :accesses
	
	belongs_to :equipment
	
	devise :database_authenticatable, :validatable
	
	def to_s
	    name
	end
end
