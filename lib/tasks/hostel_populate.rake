require 'faker'

namespace :db do
  desc "Fill hostel table with sample data"
  task :populate_hostel => :environment do
    4.times do |n|
    	hostelName  = Faker::Address.city + " Hostel"
    	city = City.find_by_name :Kumasi
        description = Faker::Lorem.paragraph(2)

        hostel = Hostel.create!(
            :name_of_hostel => hostelName,
            :city_id        => city.id,
            :location       => "Ayeduase",
            :description    => description
        )

        puts hostel.name_of_hostel + " => Created"
    end
    3.times do |n|
        hostelName  = Faker::Address.city + " Hostel"
        city = City.find_by_name :Kumasi
        description = Faker::Lorem.paragraph(2)

        hostel = Hostel.create!(
            :name_of_hostel => hostelName,
            :city_id        => city.id,
            :location       => "Kotei",
            :description    => description
        )

        puts hostel.name_of_hostel + " => Created"
    end
    6.times do |n|
        hostelName  = Faker::Address.city + " Hostel"
        city = City.find_by_name :Accra
        description = Faker::Lorem.paragraph(2)

        hostel = Hostel.create!(
            :name_of_hostel => hostelName,
            :city_id        => city.id,
            :location       => "Legon",
            :description    => description
        )

        puts hostel.name_of_hostel + " => Created"
    end
  end
end