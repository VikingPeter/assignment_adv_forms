class CreateDucks < ActiveRecord::Migration
  def change
    create_table :ducks do |t|
      t.references :person, index: true
      t.string :name
      t.string :color
      t.integer :totability

      t.timestamps
    end
  end
end
