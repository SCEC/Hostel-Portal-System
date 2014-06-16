class Hostel < ActiveRecord::Base
	belongs_to :city

	has_and_belongs_to_many :facilities, join_table: 'facilities_hostels'
	attr_accessible :facility_ids, 
					:city_id, 
					:name_of_hostel, 
					:location,
					:description,
					:country_id
	# has_many :hostel_facilities
	# has_many :facilities, through: :hostel_facilities
	# belongs_to :facility
	# attr_accessible :facility_ids
	# has_and_belongs_to_many :facilities
	accepts_nested_attributes_for :facilities, :allow_destroy => true

	def to_s
		return self.name_of_hostel
	end
end
