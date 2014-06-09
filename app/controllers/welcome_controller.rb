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
    @hostels = Hostel.all
    @countries = Country.all

  end

  def get_hostels_from_country
    @hostels = Hostel.find_by_country_id(params[:country_id])
    puts @hostels
  end

  def find_hostel_from_id
    ho
  end

  def hostels
    @countries = Country.all
    @hostels = Hostel.all
  end
end
