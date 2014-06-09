class Facility < ActiveRecord::Base
	has_and_belongs_to_many :hostels, join_table: 'facilities_hostels'
	attr_accessible :hostel_ids

	accepts_nested_attributes_for :hostels

	
end
