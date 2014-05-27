class CreateHostelFacilities < ActiveRecord::Migration
  def change
  	drop_table(:hostel_facilities)
    create_table :hostel_facilities do |t|
    	t.belongs_to :facility
    	t.belongs_to :hostel
    	# t.timestamps
    end
    add_index :hostel_facilities, [:facility_id, :hostel_id]
  end
end
