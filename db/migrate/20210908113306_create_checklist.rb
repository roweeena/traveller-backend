class CreateChecklist < ActiveRecord::Migration[5.2]
  def change
    create_table :checklists do |t|
      t.text :todoList
      t.integer :user_id
      t.integer :trip_id
      t.integer :location_id
    end
  end
end
