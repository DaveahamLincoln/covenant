json.array!(@cclasses) do |cclass|
  json.extract! cclass, :id, :name, :description
  json.url cclass_url(cclass, format: :json)
end
