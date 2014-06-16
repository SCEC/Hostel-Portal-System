# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.create([
	{:id => 1, :name=>:Ghana}, 
	{:id => 2, :name=>:Nigeria}
])

Facility.create([
	{:id => 1, :facility_type => :Generator},
	{:id => 2, :facility_type => :TV_Room},
	{:id => 3, :facility_type => :WiFi},
	{:id => 4, :facility_type => :Transport},
])

City.create([
	{:id => 1, :name=> :Kumasi, :country_id => 1},
	{:id => 2, :name=> :Accra, :country_id => 1},
	{:id => 3, :name=> :Cape_coast, :country_id => 1}
])
# COUNTRIES  = YAML.load_file(Rails.root.join('config/country.yml'))
# COUNTRIES.each do |country|
# 	Country.create(country)
# end