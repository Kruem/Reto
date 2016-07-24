class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :flights_id
      t.integer :passenger_id
      t.float :price

      t.timestamps null: false
    end
  end
end
