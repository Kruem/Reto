class AddNewValuesToFactura < ActiveRecord::Migration
  def change
    add_column :facturas, :razon, :string
  end
end
