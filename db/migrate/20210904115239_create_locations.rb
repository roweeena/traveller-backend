class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.text :name
      t.integer :user_id
      t.integer :trip_id
      t.decimal :latitude
      t.decimal :longitude
    end
  end
end
