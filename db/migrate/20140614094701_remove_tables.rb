class RemoveTables < ActiveRecord::Migration
  def change
  	drop_table :number_types
  	drop_table :room_in_hostels
  end
end
