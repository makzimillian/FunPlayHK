json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :category, :location, :latitude, :longitude, :description, :rating, :url
  json.url activity_url(activity, format: :json)
end
