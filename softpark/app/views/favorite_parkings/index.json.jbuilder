json.array!(@favorite_parkings) do |favorite_parking|
  json.extract! favorite_parking, :id, :fec_favorite, :name_space, :user_id, :rent_parking_id
  json.url favorite_parking_url(favorite_parking, format: :json)
end
