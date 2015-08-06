json.array!(@portals) do |portal|
  json.extract! portal, :id, :name, :longitude, :latitude
  json.url portal_url(portal, format: :json)
end
