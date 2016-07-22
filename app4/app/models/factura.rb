class Factura < ActiveRecord::Base
  validates :nombre, :presence => {:message => "Usted debe ingresar su nombre"},
   length: {minimum: 2, maximum: 50, :message => "El nombre debe tener entre 5 y 50 caracteres"}

  validates :apellido, :presence => {:message => "Usted debe ingresar su Apellido"},
   length: {minimum: 2, maximum: 50, :message => "El Apellido debe tener entre 5 y 50 caracteres"}

  validates :cedula, :presence => {:message => "Usted debe ingresar un Cedula"},
  length: {minimum: 9, maximum: 11, :message => "La cedula debe tener entre 8 y 11 caracteres"}

  validates :producto, :presence => {:message => "Usted debe ingresar un producto"}

  validates :precio, :presence => {:message => "Usted debe ingresar el'precio"},
   :numericality => {:only_integer => true, :message => "Solo dijite numeros"}

  validates :iva, :presence => {:message => "Usted debe ingresar el iva"},
   :numericality => {:only_integer => true, :message => "Solo ingrese numeros"}


end
