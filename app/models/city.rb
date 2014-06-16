class City < ActiveRecord::Base
	attr_accessible :name, :country_id, :hostel

	belongs_to	:country
	has_one		:hostel
end
