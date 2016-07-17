class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :age
      t.string :race
      t.string :day
      t.string :time

      t.timestamps null: false
    end
  end
end
