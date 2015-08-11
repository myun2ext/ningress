json.array!(@footprints) do |footprint|
  json.extract! footprint, :id, :latitude, :longitude, :user_id
  json.url footprint_url(footprint, format: :json)
end
