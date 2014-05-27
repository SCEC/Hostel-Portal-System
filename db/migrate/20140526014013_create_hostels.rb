class CreateHostels < ActiveRecord::Migration
  def change
    create_table :hostels do |t|
      t.string :name_of_hostel
      t.string :location

      t.timestamps
    end
  end
end
