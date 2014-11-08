json.array!(@artworks) do |artwork|
  json.extract! artwork, :id, :title, :description, :photo, :pickup_only, :price, :dimensions, :color
  json.url artwork_url(artwork, format: :json)
end
