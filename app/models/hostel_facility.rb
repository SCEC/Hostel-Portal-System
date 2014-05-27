class HostelFacility < ActiveRecord::Base
	belongs_to :hostel
	belongs_to :facility
end
