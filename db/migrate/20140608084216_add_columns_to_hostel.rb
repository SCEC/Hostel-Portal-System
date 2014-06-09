class AddColumnsToHostel < ActiveRecord::Migration
  def change
  	add_column :hostels, :country, :text
  	add_column :hostels, :city, :text
  end
end
