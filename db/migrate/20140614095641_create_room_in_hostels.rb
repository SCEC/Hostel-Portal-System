class CreateRoomInHostels < ActiveRecord::Migration
  def change
    create_table :room_in_hostels do |t|
    	t.belongs_to	:hostel 
    	t.belongs_to	:number_type
    	t.integer		:beds_remaining
      	t.timestamps
    end
    RoomInHostel.create ([
    	{
    		:hostel_id 		=> 1, 
    		:number_type_id	=> 4,
    		:beds_remaining	=> 4
    	},
    	{
    		:hostel_id 		=> 1, 
    		:number_type_id	=> 4,
    		:beds_remaining	=> 4
    	},
    	{
    		:hostel_id 		=> 1, 
    		:number_type_id	=> 4,
    		:beds_remaining	=> 4
    	},
    	{
    		:hostel_id 		=> 1, 
    		:number_type_id	=> 4,
    		:beds_remaining	=> 4
    	},
    	{
    		:hostel_id 		=> 1, 
    		:number_type_id	=> 4,
    		:beds_remaining	=> 4
    	},
    	{
    		:hostel_id 		=> 1, 
    		:number_type_id	=> 4,
    		:beds_remaining	=> 4
    	},
    	{
    		:hostel_id 		=> 1, 
    		:number_type_id	=> 4,
    		:beds_remaining	=> 4
    	}
    	
    		
    ])
  end
end
