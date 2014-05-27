class HostelFacilityRelationship < ActiveRecord::Migration
  def change
  	create_table :hostel_facilities, id: false do |t|
      t.belongs_to :hostel
      t.belongs_to :facility
    end
  end
end
