json.array!(@pull_roles) do |pull_role|
  json.extract! pull_role, :id, :string, :string
  json.url pull_role_url(pull_role, format: :json)
end
