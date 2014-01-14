json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :logo_url
  json.url organization_url(organization, format: :json)
end
