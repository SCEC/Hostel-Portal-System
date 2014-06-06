class CreateUserPashash < ActiveRecord::Migration
  def change
    create_table :user_pashashes do |t|
    	t.belongs_to :student
    	t.string :encrypted_password
    	t.string :salt
    end
  end
end