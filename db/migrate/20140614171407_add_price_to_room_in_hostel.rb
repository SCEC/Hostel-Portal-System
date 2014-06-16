class AddPriceToRoomInHostel < ActiveRecord::Migration
  def change
  	add_column :room_in_hostels, :price, :integer
  	hostels = RoomInHostel.all.last 7

  	hostels.each do |hostel|
  		hostel.price = 1000
  		hostel.save
  	end
  	
  end
end