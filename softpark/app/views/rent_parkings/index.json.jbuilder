json.array!(@rent_parkings) do |rent_parking|
  json.extract! rent_parking, :id, :title, :description, :price, :addres, :phone, :user_id, :location_id, :type_parking_id
  json.url rent_parking_url(rent_parking, format: :json)
end
