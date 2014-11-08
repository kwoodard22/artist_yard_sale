json.array!(@artists) do |artist|
  json.extract! artist, :id, :username, :name, :address, :bio, :photo
  json.url artist_url(artist, format: :json)
end
