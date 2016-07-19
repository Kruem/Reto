class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :nombre
      t.string :apellido
      t.integer :cedula
      t.string :producto
      t.string :precio
      t.string :iva
      t.string :descuento

      t.timestamps null: false
    end
  end
end
