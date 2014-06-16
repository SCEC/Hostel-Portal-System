class Facility < ActiveRecord::Base
	has_and_belongs_to_many :hostels, join_table: 'facilities_hostels'
	attr_accessible :hostel_ids, :facility_type

	accepts_nested_attributes_for :hostels

	def to_s
		return self.facility_type
	end
end
