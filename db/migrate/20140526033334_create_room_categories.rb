class CreateRoomCategories < ActiveRecord::Migration
  def change
    create_table :room_categories do |t|
      t.string :type

      t.timestamps
    end
  end
end
