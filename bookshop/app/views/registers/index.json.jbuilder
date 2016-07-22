json.array!(@registers) do |register|
  json.extract! register, :id, :user_id, :book_id
  json.url register_url(register, format: :json)
end
