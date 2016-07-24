class Pilot < ActiveRecord::Base
  has_many :flights #un piloto tiene muchos vuelos
end
