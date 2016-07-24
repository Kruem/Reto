class Ticket < ActiveRecord::Base
  belongs_to :Passenger #ticket pertenece aun pasajero
  belongs_to :flight #ticket peretenece un vuelo
end
