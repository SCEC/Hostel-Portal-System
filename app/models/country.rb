class Country < ActiveRecord::Base
	attr_accessible :name

	has_one :city
	has_one :hostel, :through => :city
end
