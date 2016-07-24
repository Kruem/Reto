json.array!(@flight_passengers) do |flight_passenger|
  json.extract! flight_passenger, :id, :flight_id, :passenger_id
  json.url flight_passenger_url(flight_passenger, format: :json)
end
