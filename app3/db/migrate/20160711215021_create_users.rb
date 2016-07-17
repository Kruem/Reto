class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :tower
      t.string :aparment

      t.timestamps null: false
    end
  end
end
