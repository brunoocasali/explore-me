json.array!(@places) do |place|
  json.extract! place, :id, :user_id, :latitude, :longitude, :rate
  json.url place_url(place, format: :json)
end
