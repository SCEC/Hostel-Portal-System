class RemoveTables < ActiveRecord::Migration
  def change
  	drop_table :room_in_hostels
  end
end
