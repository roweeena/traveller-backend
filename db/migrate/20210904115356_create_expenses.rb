class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.text :items
      t.text :cost
      t.integer :user_id
    end
  end
end
