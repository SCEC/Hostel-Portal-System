require 'faker'

namespace :db do
  desc "Fill hostel table with sample data"
  task :populate_hostel => :environment do
    8.times do |n|
    	hostelName  = Faker::Address.city + " Hostel"
    	country = Country.find_by_name :Ghana
        description = Faker::Lorem.paragraph

        hostel = Hostel.create!(
            :name_of_hostel => hostelName,
            :country_id     => country.id,
            :city           => :Kumasi,
            :location       => :Ayeduase,
            :description    => description
        )

        puts hostel.name_of_hostel + " => Created"
    end

    4.times do |n|
        hostelName  = Faker::Address.city + " Hostel"
        country = Country.find_by_name :Ghana
        description = Faker::Lorem.paragraph
        
        hostel = Hostel.create!(
            :name_of_hostel => hostelName,
            :country_id     => country.id,
            :city           => :Kumasi,
            :location       => :Kotei,
            :description    => description
        )

        puts hostel.name_of_hostel + " => Created"
    end

    4.times do |n|
        hostelName  = Faker::Address.city + " Hostel"
        country = Country.find_by_name :Ghana
        description = Faker::Lorem.paragraph
        
        hostel = Hostel.create!(
            :name_of_hostel => hostelName,
            :country_id     => country.id,
            :city           => :Accra,
            :location       => :Legon,
            :description    => description
        )

        puts hostel.name_of_hostel + " => Created"
    end
    6.times do |n|
        hostelName  = Faker::Address.city + " Hostel"
        country = Country.find_by_name :Ghana
        description = Faker::Lorem.paragraph
        
        hostel = Hostel.create!(
            :name_of_hostel => hostelName,
            :country_id     => country.id,
            :city           => :Accra,
            :location       => :East_Legon,
            :description    => description
        )
        
        puts hostel.name_of_hostel + " => Created"
    end
  end
end