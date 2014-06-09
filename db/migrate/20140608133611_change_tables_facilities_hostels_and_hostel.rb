class ChangeTablesFacilitiesHostelsAndHostel < ActiveRecord::Migration
  def change
  	# 
  	remove_column :facilities_hostels, :id
  	add_column :hostels, :description, :string
  	drop_table :hostel_facilities
  end
end
