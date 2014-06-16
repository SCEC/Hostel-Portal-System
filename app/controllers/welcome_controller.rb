class WelcomeController < ApplicationController

  before_filter :save_login_state, :only => [:login]
  def index
  end

  def contact
  end

  def faq  	
  end

  def login
    @user = Student.new
  end

  def about
  end

  def reservation
  end

  def find_hostel
  end

  def get_hostels_from_country
    country_id = params[:id]

    @hostels = Hostel.joins(:city).where('cities.country_id' => country_id)
    @cities = City.find_all_by_country_id(country_id)

    puts @hostels
    respond_to do |format|
      format.json   { render :json => 
                      { :cities => @cities, 
                        :hostels => @hostels
                      } 
                    }
    end
  end

  def get_hostels_from_city_id
    city_id = params[:id]

    @hostels = Hostel.find_all_by_city_id city_id

    respond_to do |format|
      format.json {
        render :json =>
        {
          :hostels => @hostels
        }
      }
    end
  end

  def find_hostel_from_id
    @hostels = Hostel.find(params[:id])
    respond_to do |format|
      format.json  { render :json => @hostels }      
    end
  end

  def hostels
    @countries = Country.all
    @hostels = Hostel.all
  end

  def get_rooms_within_hostel
    hostel_id = params[:id]
    h = RoomInHostel.find_all_by_hostel_id hostel_id

    sizes = 22
    location = (Hostel.find_by_id hostel_id).location
    total_number_of_rooms_available = h.count

    respond_to do |format|
      format.json {
        render :json =>
        {
          :location                         => location,
          :room_person_size                 => sizes,
          :total_number_of_rooms_available  => total_number_of_rooms_available
        }
      }
    end
  end
  def get_first_available_room
    hostel_id = params[:hostel_id]
    number_type_id = params[:number_type_id]
    hostel_name = (Hostel.find hostel_id).name_of_hostel
    
    h = RoomInHostel.where(
            "hostel_id = ? AND number_type_id = ? AND beds_remaining >=0 ", 
            hostel_id, number_type_id 
            ).limit 4

    if h.count > 0
      respond_to do |format|
        format.json {
          render :json => 
          {
            :response => true,
            :hostel_name => hostel_name,
            :rooms  => h
          }
        }
      end
    else 
      respond_to do |format|
        format.json {
          render :json => 
          {
            :response => false,
            :hostel_name => hostel_name
          }
        }
      end
    end

  end
end
