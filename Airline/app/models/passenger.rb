class Passenger < ActiveRecord::Base
  has_many :FlightPassengers #muchos pasajeos tienen muchos vuelos
  has_many :flights, through: :FlightPassenger
  belongs_to :ticket #un pasajero tiene un ticket

end
