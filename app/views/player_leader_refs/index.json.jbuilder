json.array!(@player_leader_refs) do |player_leader_ref|
  json.extract! player_leader_ref, :id
  json.url player_leader_ref_url(player_leader_ref, format: :json)
end
