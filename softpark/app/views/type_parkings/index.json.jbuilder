json.array!(@type_parkings) do |type_parking|
  json.extract! type_parking, :id, :description, :state
  json.url type_parking_url(type_parking, format: :json)
end
