json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :license_plate, :colour, :make, :model, :year
  json.url vehicle_url(vehicle, format: :json)
end
