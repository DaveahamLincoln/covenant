json.array!(@character_pull_role_refs) do |character_pull_role_ref|
  json.extract! character_pull_role_ref, :id, :pull_role_id, :character_id
  json.url character_pull_role_ref_url(character_pull_role_ref, format: :json)
end
