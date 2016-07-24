class FlightPassenger < ActiveRecord::Base
 belongs_to :Passenger
 belongs_to :flight
 belongs_to :ticket
end
