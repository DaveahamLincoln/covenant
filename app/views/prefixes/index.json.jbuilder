json.array!(@prefixes) do |prefix|
  json.extract! prefix, :id, :name, :description
  json.url prefix_url(prefix, format: :json)
end
