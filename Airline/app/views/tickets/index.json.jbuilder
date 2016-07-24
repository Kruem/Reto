json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :name, :flights_id, :passenger_id, :price
  json.url ticket_url(ticket, format: :json)
end
