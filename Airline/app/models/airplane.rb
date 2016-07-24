class Airplane < ActiveRecord::Base
  has_many:flights #un avion tiene muchos vuelos
end
