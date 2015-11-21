json.array!(@players) do |player|
  json.extract! player, :id, :[name, :rank, :rxp, :squad
  json.url player_url(player, format: :json)
end
