class NumberType < ActiveRecord::Base
	attr_accessible :number
	
	def to_s
		return self.number
	end
end