json.array!(@sigils) do |sigil|
  json.extract! sigil, :id, :name, :description
  json.url sigil_url(sigil, format: :json)
end
