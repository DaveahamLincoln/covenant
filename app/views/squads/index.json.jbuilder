json.array!(@squads) do |squad|
  json.extract! squad, :id, :name
  json.url squad_url(squad, format: :json)
end
