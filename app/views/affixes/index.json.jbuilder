json.array!(@affixes) do |affix|
  json.extract! affix, :id, :name, :description
  json.url affix_url(affix, format: :json)
end
