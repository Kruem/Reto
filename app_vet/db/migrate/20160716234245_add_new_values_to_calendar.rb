class AddNewValuesToCalendar < ActiveRecord::Migration
  def change
    add_column :calendars, :pet_id, :integer
  end
end
