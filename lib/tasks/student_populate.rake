require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    50.times do |n|
    	name  = Faker::Company.name
    	# firstName , lastname, username, email, contact
    	firstName = Faker::Name.first_name
    	lastname = Faker::Name.last_name

    	username = firstName + lastname
    	email = Faker::Internet.email
    	contact = Faker::PhoneNumber.cell_phone

    	Student.create!(
    		:firstName 	=> firstName,
    		:lastname 	=> lastname,
    		:username	=> username,
    		:email		=> email,
    		:contact 	=> contact
    	)
    end
  end
end