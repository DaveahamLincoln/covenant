json.array!(@characters) do |character|
  json.extract! character, :id, :name, :role, :cclass, :prefix, :affix, :sigil_1, :sigil_2, :sigil_3, :sigil_4, :toughness, :ac
  json.url character_url(character, format: :json)
end
