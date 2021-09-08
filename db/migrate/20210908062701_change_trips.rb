class ChangeTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :start
    remove_column :trips, :end

    add_column :trips, :start, :date
    add_column :trips, :end, :date
  end
end
