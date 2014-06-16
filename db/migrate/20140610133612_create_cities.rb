class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.belongs_to :country
    end
    drop_table :hostels
    create_table :hostels do |t|
      t.string 		:name_of_hostel
      t.belongs_to  :city
      t.string 		:location
      t.string		:description
      t.timestamps
    end
  end
end
