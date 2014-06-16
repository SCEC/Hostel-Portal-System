class RoomInHostel < ActiveRecord::Base
	attr_accessible :hostel_id,	:number_type_id, :beds_remaining, :price
	belongs_to :hostel
	belongs_to :number_type
end
