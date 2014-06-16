class CreateNumberTypes < ActiveRecord::Migration
  def change
    create_table :number_types do |t|
    	t.integer :number
    end
    NumberType.create([
    	{:number => 1},
    	{:number => 2},
    	{:number => 3},
    	{:number => 4}
    ])
  end
end
