json.array!(@supplies) do |supply|
  json.extract! supply, :id, :title, :color, :price, :description, :condition
  json.url supply_url(supply, format: :json)
end
