class HostelFacilityJoinTable < ActiveRecord::Migration
  def change
  	create_table :facilities_hostels do |t|
  		t.integer :hostel_id
  		t.integer :facility_id
  	end

  	add_index :facilities_hostels, [:facility_id, :hostel_id]
  end
end
