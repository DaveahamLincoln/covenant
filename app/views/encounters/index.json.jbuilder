json.array!(@encounters) do |encounter|
  json.extract! encounter, :id, :string, :string
  json.url encounter_url(encounter, format: :json)
end
