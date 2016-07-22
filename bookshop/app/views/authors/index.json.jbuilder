json.array!(@authors) do |author|
  json.extract! author, :id, :name, :lastname, :country
  json.url author_url(author, format: :json)
end
