class AddDatesToTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :dates

    add_column :trips, :start, :text
    add_column :trips, :end, :text
  end
end
