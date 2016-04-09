json.array!(@reserve_parkings) do |reserve_parking|
  json.extract! reserve_parking, :id, :fec_reserve, :fec_ini_reserve, :fec_fin_reserv, :hor_ini_reserve, :hor_fin_reserve, :mont_reserve, :cod_Pay, :state, :int, :user_id, :rent_parking_id
  json.url reserve_parking_url(reserve_parking, format: :json)
end
