class AddColumnLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :location, :text

    remove_column  :trips, :location_id, :integer
    remove_column  :checklists, :location_id, :integer
  end
end
