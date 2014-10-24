json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :category, :location, :comments, :rating
  json.url activity_url(activity, format: :json)
end
