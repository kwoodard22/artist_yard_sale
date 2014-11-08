json.array!(@media) do |medium|
  json.extract! medium, :id, :type, :artwork_id, :supply_id
  json.url medium_url(medium, format: :json)
end
