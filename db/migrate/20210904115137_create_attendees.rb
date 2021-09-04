class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :attendees do |t|
      t.integer :user_id
      t.integer :trip_id
    end
  end
end
