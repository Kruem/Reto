class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :id_calendar
      t.string :day
      t.string :time

      t.timestamps null: false
    end
  end
end
