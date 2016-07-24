class Route < ActiveRecord::Base
  has_many :flights #una ruta tiene muchos vuelos
end
