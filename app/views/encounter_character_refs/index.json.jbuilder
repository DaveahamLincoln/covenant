json.array!(@encounter_character_refs) do |encounter_character_ref|
  json.extract! encounter_character_ref, :id, :encounter_id, :character_id
  json.url encounter_character_ref_url(encounter_character_ref, format: :json)
end
