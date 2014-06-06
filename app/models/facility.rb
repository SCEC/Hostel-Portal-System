class Facility < ActiveRecord::Base
	#has_and_belongs_to_many :hostels
	has_many :hostel_facilities
	has_many :hostels, through: :hostel_facilities
end
