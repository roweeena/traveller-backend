class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.text :dates
      t.integer :location_id
      t.integer :user_id
    end
  end
end
