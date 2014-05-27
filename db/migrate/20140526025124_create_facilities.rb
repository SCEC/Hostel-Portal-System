class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :facility_type

      t.timestamps
    end
  end
end
