class CreateRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_types do |t|
      t.integer :number

      t.timestamps
    end
  end
end
