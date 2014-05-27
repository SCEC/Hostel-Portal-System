class ChangeTypeToRoomTypeInCategoryMigration < ActiveRecord::Migration
  def change
    rename_column :room_categories, :type, :room_setting
  end
end
