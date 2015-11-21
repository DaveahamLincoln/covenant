json.array!(@pulls) do |pull|
  json.extract! pull, :id, :string, :string
  json.url pull_url(pull, format: :json)
end
