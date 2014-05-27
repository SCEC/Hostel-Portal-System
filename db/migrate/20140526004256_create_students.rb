class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstName
      t.string :lastname
      t.string :username
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
