class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :photo
      t.integer :zoo_id

      t.timestamps
    end
  end
end
