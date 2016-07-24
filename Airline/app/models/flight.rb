class Flight < ActiveRecord::Base
  belongs_to :route #un vuelo tiene una ruta
  belongs_to :pilot #un vueo tiene un piloto
  has_one :airplane #un vuelo tiene un avion
  has_many :FlightPassenger
  has_many :Passenger, through: :FlightPassenger
  has_many :ticket, through: :FlightPassenger
end
