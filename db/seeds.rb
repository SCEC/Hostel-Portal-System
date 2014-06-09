# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.create(:name=>:Ghana)
Country.create(:name=>:Nigeria)
# COUNTRIES  = YAML.load_file(Rails.root.join('config/country.yml'))
# COUNTRIES.each do |country|
# 	Country.create(country)
# end