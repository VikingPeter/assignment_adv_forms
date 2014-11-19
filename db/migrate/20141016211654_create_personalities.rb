class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
    	t.integer :habit_id
    	t.integer	:person_id
    	t.string :name
    	
      t.timestamps
    end
  end
end
