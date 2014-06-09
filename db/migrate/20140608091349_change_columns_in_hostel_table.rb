class ChangeColumnsInHostelTable < ActiveRecord::Migration
  def change
  	remove_column :hostels, :city
  	remove_column :hostels, :country

  	add_column :hostels, :city, :string
  	add_column :hostels, :country, :string
  end
end
